class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.24.0/adaptlypost_0.24.0_darwin_arm64.tar.gz"
      sha256 "95ad0e602681c5e7d9732580ec18327c7fc5f9105dc188bd2d9f037fd606ea08"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.24.0/adaptlypost_0.24.0_darwin_x64.tar.gz"
      sha256 "2509af99be91eea8dae7855bbf2e0b4f9cf56341c2c48352cc5fcb3cbb81eacb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.24.0/adaptlypost_0.24.0_linux_arm64.tar.gz"
      sha256 "3f486ec79bfa366c731aee5c2fe04082d45102c7f97ab0dce3417c1786d97c48"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.24.0/adaptlypost_0.24.0_linux_x64.tar.gz"
      sha256 "99403a46af3f51f8b963446aef5bf008b7cbcc20cd9e89c213c9e181eb88121b"
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
