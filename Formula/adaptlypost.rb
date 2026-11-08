class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.20.0/adaptlypost_0.20.0_darwin_arm64.tar.gz"
      sha256 "7b8bb8d5e1e1f26cabe7a5893ac72f7ea526874a971ddc32d4c158027478ad4b"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.20.0/adaptlypost_0.20.0_darwin_x64.tar.gz"
      sha256 "76e6175655cc7505a5fccd48f5a51f49b45054c5c91454046655892fc6a257be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.20.0/adaptlypost_0.20.0_linux_arm64.tar.gz"
      sha256 "cf302ac0489c5fea501607743afa50a15a842678dba53e67d053d64c6f379671"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.20.0/adaptlypost_0.20.0_linux_x64.tar.gz"
      sha256 "e5322fd67baea72a1f5ff53644025d14b0dfc066df66ba848343359ef99c9ab7"
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
