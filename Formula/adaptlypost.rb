class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.3.0/adaptlypost_0.3.0_darwin_arm64.tar.gz"
      sha256 "a20219bd0af5d33c4d26fa0cd32274aa956ec72e7f56ff0b942df0b38ab4d3ac"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.3.0/adaptlypost_0.3.0_darwin_x64.tar.gz"
      sha256 "f664dfeb7856044ae10c6718200fcd6ba1ab0cc22eeec2e0a223de3aa7fe74d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.3.0/adaptlypost_0.3.0_linux_arm64.tar.gz"
      sha256 "598d538ef469177c003459d3e491d0b85e1c588cd68a8544eb69c4fa1ba5cb05"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.3.0/adaptlypost_0.3.0_linux_x64.tar.gz"
      sha256 "e133b849ba172c313f68d3c702bce37d2b2134e1635aba6844aca381eaddd9be"
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
