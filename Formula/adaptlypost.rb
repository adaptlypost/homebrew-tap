class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.2.0/adaptlypost_0.2.0_darwin_arm64.tar.gz"
      sha256 "cd474750dcbcd8e9de1019e87820b7f6f5ffec365df46df37fee13ef4a979f70"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.2.0/adaptlypost_0.2.0_darwin_x64.tar.gz"
      sha256 "2163bd01875d79b88336ceb85c601746e54fd4d4df77a0696eb3ce41b3a8047e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.2.0/adaptlypost_0.2.0_linux_arm64.tar.gz"
      sha256 "6a943bf3adef850f11b7504d13c80273e63cf3b6272fde0126b0c4f1ceee8dd6"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.2.0/adaptlypost_0.2.0_linux_x64.tar.gz"
      sha256 "4f7fa6df94c9a50a794489d3909ee69978f74d135f1a00cbf3ca61ab10f63e93"
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
