class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.19.1/adaptlypost_0.19.1_darwin_arm64.tar.gz"
      sha256 "e58aa0426db4d3cc27ff092c6ef3440a6f3f921d1ce85b6eff4d329568d74277"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.19.1/adaptlypost_0.19.1_darwin_x64.tar.gz"
      sha256 "254682068e40bfacf56797d80619cf87b6390f59ab331af37d814134f2827f2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.19.1/adaptlypost_0.19.1_linux_arm64.tar.gz"
      sha256 "4a3507a25ea02003615adab997808bde0e0690b2311c8cca375b27f611f667af"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.19.1/adaptlypost_0.19.1_linux_x64.tar.gz"
      sha256 "e714f7e4500a4401e5a530cd80c96b14970abf5a0aeafd9c50d6a6e93bb17ce9"
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
