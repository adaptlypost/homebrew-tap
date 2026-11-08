class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.21.0/adaptlypost_0.21.0_darwin_arm64.tar.gz"
      sha256 "26025f8745a34c343a42639c9bd188233edc040a998c7c679f58c08c0dafaa85"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.21.0/adaptlypost_0.21.0_darwin_x64.tar.gz"
      sha256 "e81700d25643c815b01c589f2a13e2b89c136aa588748d9c7191ca4288c15c04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.21.0/adaptlypost_0.21.0_linux_arm64.tar.gz"
      sha256 "3abba02848f21be75062077f49c233b8e245201c898b29ae2bc5d21160af8e0b"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.21.0/adaptlypost_0.21.0_linux_x64.tar.gz"
      sha256 "71a31290f0e44931a32e7089b1bcd509a8b1cac1767a141513fd755ca68ce112"
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
