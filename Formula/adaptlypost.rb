class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.15.0/adaptlypost_0.15.0_darwin_arm64.tar.gz"
      sha256 "30a0155eb1cd6a1d1d44a0126a6894bd1a305865f94391964f8627c9cd807767"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.15.0/adaptlypost_0.15.0_darwin_x64.tar.gz"
      sha256 "6bec74e1bbcf38fe8ce780964e55cc68bf58eac27cc6bb921a577035d1ee6e94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.15.0/adaptlypost_0.15.0_linux_arm64.tar.gz"
      sha256 "39949cb37ee47aa3c958ff1586d590e170cbc6f34569e74bb3534ad05ce2ceb6"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.15.0/adaptlypost_0.15.0_linux_x64.tar.gz"
      sha256 "c56b7c05536bdbc0bc4ac137bef235fe76376d142ab878775495bceee2494742"
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
