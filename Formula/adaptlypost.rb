class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.18.0/adaptlypost_0.18.0_darwin_arm64.tar.gz"
      sha256 "75c6b54b8873dbfc1931b9ce2da28c90ee9b86383f4f849d11c283ca87c01a8e"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.18.0/adaptlypost_0.18.0_darwin_x64.tar.gz"
      sha256 "1fe5fd23722145a7054b08effa3563f3082275aa0a81d6090f4442de45d2ea94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.18.0/adaptlypost_0.18.0_linux_arm64.tar.gz"
      sha256 "88442ea6a5b84ec6214b4e4805fe029c59420caf204706a4be33858ed923b7ed"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.18.0/adaptlypost_0.18.0_linux_x64.tar.gz"
      sha256 "f9982b418fe6d08b7d474b7e4dfe729bdc1dc8d6844fba4a2b03e4879820865b"
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
