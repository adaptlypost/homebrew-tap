class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.4.0/adaptlypost_0.4.0_darwin_arm64.tar.gz"
      sha256 "39f929f0767722cebc0cb42ba3cb855062996a05fcb7b2716acb78e12205f78f"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.4.0/adaptlypost_0.4.0_darwin_x64.tar.gz"
      sha256 "afb3643d94d34c704278fb5974e8ecd0f35e16edd84af8c6035fd5831c688f63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.4.0/adaptlypost_0.4.0_linux_arm64.tar.gz"
      sha256 "ca2e58a6a2ac08b6ea8d724ec38a2e383bc977458e9c2483b03ec05651f50186"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.4.0/adaptlypost_0.4.0_linux_x64.tar.gz"
      sha256 "ab7223c2d37cd4aaafebf46668f7f6ba71293bbb9cce27444852427830b5711f"
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
