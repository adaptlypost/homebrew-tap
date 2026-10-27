class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.16.0/adaptlypost_0.16.0_darwin_arm64.tar.gz"
      sha256 "8924f8b524d2cb9fbc3e3e42f30f1ce572b03863cb4a5b60b867a9e89e758566"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.16.0/adaptlypost_0.16.0_darwin_x64.tar.gz"
      sha256 "66ba471a51211e98770d07d68e4dee9633862ccb1728e7b517021a814ffebaa1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.16.0/adaptlypost_0.16.0_linux_arm64.tar.gz"
      sha256 "d071bff5e405a356f7d3802fc5f26a806693dd2e2fe006054bdfbb39f5f60b8c"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.16.0/adaptlypost_0.16.0_linux_x64.tar.gz"
      sha256 "dab9d948dfe673e4057eaa5c4878ad6dcb21a2a8d66589c39dbdcfc705547ef2"
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
