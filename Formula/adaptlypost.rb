class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.4/adaptlypost_0.1.4_darwin_arm64.tar.gz"
      sha256 "c009b0a4eb4f0f7e94326492131cb90b7085263e6892d7adec501f1beb218b7b"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.4/adaptlypost_0.1.4_darwin_x64.tar.gz"
      sha256 "fa660c986c16d8cc4f7b273a6fe93761b9326a86149bea6d85a37f522a7fae07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.4/adaptlypost_0.1.4_linux_arm64.tar.gz"
      sha256 "39c374e7b0789ab23e570b4e4ee4f2367c0d593d6ca1f613a50f5eedac2d9180"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.4/adaptlypost_0.1.4_linux_x64.tar.gz"
      sha256 "c0a6630ed1a9c5a8196d3db0c792a7434b41eaf3e9813fc163ef991996e6038e"
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
