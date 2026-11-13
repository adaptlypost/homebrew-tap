class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.25.0/adaptlypost_0.25.0_darwin_arm64.tar.gz"
      sha256 "3fba6e0aa6b03d20229142e8707671a7ae6f8d61a4a3bf49c9a0adbe5acb4557"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.25.0/adaptlypost_0.25.0_darwin_x64.tar.gz"
      sha256 "f0069e30743059a9aa58d511dd7adc989b7ebbc05fb08f24fcee65195874fa92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.25.0/adaptlypost_0.25.0_linux_arm64.tar.gz"
      sha256 "2a1d7f9230578d00ff98790b9a4a6f7e1b86538a6e7365bcab4a1f79df3ddfe7"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.25.0/adaptlypost_0.25.0_linux_x64.tar.gz"
      sha256 "b7b31a8b6b3870c984aef67d5765347a43b76f6c1b154e477ee22b118159020d"
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
