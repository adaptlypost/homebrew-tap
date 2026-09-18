#!/usr/bin/env python3
import pathlib
import re
import sys

ARCH_ORDER = ["darwin_arm64", "darwin_x64", "linux_arm64", "linux_x64"]
SHA256 = re.compile(r"^[0-9a-f]{64}$")
SEMVER = re.compile(r"\d+\.\d+\.\d+(?:-[0-9A-Za-z.-]+)?")


def die(message):
    print(f"bump: {message}", file=sys.stderr)
    raise SystemExit(1)


def main(argv):
    if len(argv) != 5:
        die(f"usage: bump.py <version> {' '.join('<' + a + '>' for a in ARCH_ORDER)}")

    version, *shas = argv
    if not SEMVER.fullmatch(version):
        die(f"{version!r} is not a semver version")
    for arch, sha in zip(ARCH_ORDER, shas):
        if not SHA256.fullmatch(sha):
            die(f"{arch}: {sha!r} is not a sha256 digest")

    formulae = sorted(pathlib.Path("Formula").glob("*.rb"))
    if len(formulae) != 1:
        die(f"expected exactly one formula, found {len(formulae)}")
    formula = formulae[0]
    text = formula.read_text()

    current = {m.group(1) for m in re.finditer(r"/releases/download/v(" + SEMVER.pattern + ")/", text)}
    if len(current) != 1:
        die(f"expected one version across the urls, found {sorted(current) or 'none'}")
    previous = current.pop()

    urls = re.findall(r'^\s*url "([^"]+)"', text, flags=re.M)
    if len(urls) != len(ARCH_ORDER):
        die(f"expected {len(ARCH_ORDER)} urls, found {len(urls)}")

    text = text.replace(previous, version)

    digests = iter(shas)
    text, count = re.subn(
        r'^(\s*sha256\s+)"[^"]+"', lambda m: f'{m.group(1)}"{next(digests)}"', text, flags=re.M
    )
    if count != len(shas):
        die(f"expected {len(shas)} sha256 lines, found {count}")

    formula.write_text(text)
    print(f"{formula}: {previous} -> {version}")


if __name__ == "__main__":
    main(sys.argv[1:])
