class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.9.0/adaptlypost_0.9.0_darwin_arm64.tar.gz"
      sha256 "c4a299b4fbcdac447485d8a3a330352b5381f6f532d1c2ad9282abd95940b7d5"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.9.0/adaptlypost_0.9.0_darwin_x64.tar.gz"
      sha256 "9f8eb0289c19add965009c89bf256be549cf8c9a8acf85e791a6e87d46a088a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.9.0/adaptlypost_0.9.0_linux_arm64.tar.gz"
      sha256 "368c9c4a86f2cbd7920864f1dfd783b0871eaa401497cd577bb9f8060cf7dd86"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.9.0/adaptlypost_0.9.0_linux_x64.tar.gz"
      sha256 "d9eb6a6c8c1a74cb2333e5258f2acdd35d05f4914a6a1766220a0559632fed43"
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
