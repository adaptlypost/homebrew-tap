class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.5/adaptlypost_0.1.5_darwin_arm64.tar.gz"
      sha256 "8f62a628a019b7a3f2940957c513d6acdede2df727a98c07d136e5ebf2b923b6"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.5/adaptlypost_0.1.5_darwin_x64.tar.gz"
      sha256 "ad142e6c6dcaa683e79fdefa6a511e01b6fd4d54f5030c4da27565714091c80a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.5/adaptlypost_0.1.5_linux_arm64.tar.gz"
      sha256 "53f27cc06cf49a109b683c869737c754f17c677d3491c37ab1ddf7a3936d99c2"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.5/adaptlypost_0.1.5_linux_x64.tar.gz"
      sha256 "baddbb273ed2e4b0a7c874a7193fce8b159a1793d1e97dcd569078e6c69fa7fd"
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
