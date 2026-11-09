class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.23.0/adaptlypost_0.23.0_darwin_arm64.tar.gz"
      sha256 "54ee563b8cd70269512db63ce26576d91a72d2cddbd8885f8f0a1fc4a7ac97e8"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.23.0/adaptlypost_0.23.0_darwin_x64.tar.gz"
      sha256 "3e1c817b9886e792ad1ee34648ce0cdbf579045e0db7829dfd28ef50f8128acd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.23.0/adaptlypost_0.23.0_linux_arm64.tar.gz"
      sha256 "7b294a3d4b2022abac3d807d3774695d58459b647c8370242663ef41807343dd"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.23.0/adaptlypost_0.23.0_linux_x64.tar.gz"
      sha256 "04a9952c5591a21a2e027c82bcbc76810225e870d492339ad1e3bd922e3b0638"
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
