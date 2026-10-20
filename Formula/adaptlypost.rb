class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.11.0/adaptlypost_0.11.0_darwin_arm64.tar.gz"
      sha256 "2b3e98f341047d9a878507fd9d07539bdc271d7df1f0b65037f0c45a1597e6ea"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.11.0/adaptlypost_0.11.0_darwin_x64.tar.gz"
      sha256 "1c619d1e4f0e86f9497db962aefb2a5783bc6553478708158d7a3b012c2148fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.11.0/adaptlypost_0.11.0_linux_arm64.tar.gz"
      sha256 "75f5c2be422919450026c2efe0258f7bc66fc2350c556d7b4dc2454e520b89f2"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.11.0/adaptlypost_0.11.0_linux_x64.tar.gz"
      sha256 "96d03a12f2372dc57cf0b2c7fe8785e1b58def8c102c0ac204ddd36905ee8226"
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
