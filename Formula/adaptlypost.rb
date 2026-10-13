class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.6.0/adaptlypost_0.6.0_darwin_arm64.tar.gz"
      sha256 "6e5c03f9d9792ace9df1f4cf2a3037c1120d4c8eac6e2e6c5d65b21a0af90b07"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.6.0/adaptlypost_0.6.0_darwin_x64.tar.gz"
      sha256 "e12da4bfe4f1938d506df855db77640fd2352cf4940068c4dd8710c036841003"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.6.0/adaptlypost_0.6.0_linux_arm64.tar.gz"
      sha256 "3d2399d4384222015cf8d3a47d687904416879c29424f43e1cf498f171b7d1a6"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.6.0/adaptlypost_0.6.0_linux_x64.tar.gz"
      sha256 "982636efbbbc93a588f96050f1a6ac83bf0714f6d3a9291b85a3b555311e36f0"
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
