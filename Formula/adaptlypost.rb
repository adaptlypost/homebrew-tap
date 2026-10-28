class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.17.0/adaptlypost_0.17.0_darwin_arm64.tar.gz"
      sha256 "98bc2e76a34acec267f410c349fb78091faf2dfb1de988855901c5510791863b"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.17.0/adaptlypost_0.17.0_darwin_x64.tar.gz"
      sha256 "ce2866ed886ff66b653d6e9ed0a3c1a61f58da7225f315d832981d7f0a9b5371"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.17.0/adaptlypost_0.17.0_linux_arm64.tar.gz"
      sha256 "939b6de2363fd1f39e9b8d78323d87f432ff83496b4378e2bad9e225fe5ad874"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.17.0/adaptlypost_0.17.0_linux_x64.tar.gz"
      sha256 "b673605a2b7dd818ae060eb45ac614669af78723305459ffcf4c1c8e8cc03429"
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
