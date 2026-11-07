class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.19.0/adaptlypost_0.19.0_darwin_arm64.tar.gz"
      sha256 "46e78333f5d4636e8d810daf59226e32415903d2c2d7c8c24108dac3c639f2bf"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.19.0/adaptlypost_0.19.0_darwin_x64.tar.gz"
      sha256 "49276fccd3ed9d138f51e372c7354097696f3f029622072a4b1c7ebaa47e3582"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.19.0/adaptlypost_0.19.0_linux_arm64.tar.gz"
      sha256 "d2471221a6ef4ef06abcf9163bb09690782272edca5d64a1fb15c4978efd5c73"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.19.0/adaptlypost_0.19.0_linux_x64.tar.gz"
      sha256 "e74abe68bbada8a176af5a013a373cb94d369a72294bfe6c35e7c825f7ff36f2"
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
