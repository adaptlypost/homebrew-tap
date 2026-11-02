class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.18.1/adaptlypost_0.18.1_darwin_arm64.tar.gz"
      sha256 "c5b74ba99af15cde22e8bb48f92396981a3dd953be67439c2860fa81fd1e00e4"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.18.1/adaptlypost_0.18.1_darwin_x64.tar.gz"
      sha256 "64030e222ee1760fb5cad5f2b36cf3127b261a413f044f7dd551b56e7f0838ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.18.1/adaptlypost_0.18.1_linux_arm64.tar.gz"
      sha256 "5935a096d91c42007d2be51e063f55b642c618dfebeabcfaeb540586fbc4804d"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.18.1/adaptlypost_0.18.1_linux_x64.tar.gz"
      sha256 "e8835792fd1662a23ea3d81aa171f710543fa0d99564a9ffb1bf7cc42b6825bf"
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
