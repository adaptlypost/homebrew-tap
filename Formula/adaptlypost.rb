class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.9/adaptlypost_0.1.9_darwin_arm64.tar.gz"
      sha256 "bd29edd1d3c31873570aa65620276066ddebf4d802baab0a0a25f49b46656083"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.9/adaptlypost_0.1.9_darwin_x64.tar.gz"
      sha256 "3f27913ef0b07e3aa39200fe6131790ffcc9395d95ee0397dccba8c3e9cef2e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.9/adaptlypost_0.1.9_linux_arm64.tar.gz"
      sha256 "402cd75b04cfae7c6951b99ed17dcb0ab9254edb07256c5da52084b01b81058e"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.9/adaptlypost_0.1.9_linux_x64.tar.gz"
      sha256 "b339bbb8a82e27080e6cf36045aeff921a357e698b46a62185d26ad935200fd7"
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
