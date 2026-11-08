class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.22.0/adaptlypost_0.22.0_darwin_arm64.tar.gz"
      sha256 "530fc1db30d926e87bc9e73998cec3fa1335ce05865a57a24aac10804864e457"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.22.0/adaptlypost_0.22.0_darwin_x64.tar.gz"
      sha256 "6a913d4f8f15b90b53643491e6bdc2a82e60510635b43bc4efa06fb3baafe41d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.22.0/adaptlypost_0.22.0_linux_arm64.tar.gz"
      sha256 "31564912387622e913c058de1068e6f2336f7ff5f98901a08036f0c2f8332ae0"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.22.0/adaptlypost_0.22.0_linux_x64.tar.gz"
      sha256 "8070e5d4728ed943caeea535660625bd3132d46d2b8c862a0788de3ad2e8a70f"
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
