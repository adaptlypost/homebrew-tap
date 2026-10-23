class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.14.0/adaptlypost_0.14.0_darwin_arm64.tar.gz"
      sha256 "fd6ddb565445eeb5e49fca15addd7364cedda2db2279e8c68617f795ff7ac46f"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.14.0/adaptlypost_0.14.0_darwin_x64.tar.gz"
      sha256 "f2bfc958b3977e2e055964f7be3e0040c983a245449749032d0579c20dbeaae3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.14.0/adaptlypost_0.14.0_linux_arm64.tar.gz"
      sha256 "94fab3c9285692f9a734310f4a3449da4740988d938fe252462ecc0badb3c5fc"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.14.0/adaptlypost_0.14.0_linux_x64.tar.gz"
      sha256 "6dbc291e55f123b82734eb7992faab693615eb873128d5351cb27538eced844e"
    end
  end

  def install
    bin.install "adaptlypost"
    bin.install_symlink bin/"adaptlypost" => "apost"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adaptlypost --version")
    assert_match "adaptlypost", shell_output("#{bin}/apost --help")
  end
end
