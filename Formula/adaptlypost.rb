class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.7/adaptlypost_0.1.7_darwin_arm64.tar.gz"
      sha256 "a9410a471ccdbe17421761ea53339f9851793a634259da9276090e828b77fc6c"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.7/adaptlypost_0.1.7_darwin_x64.tar.gz"
      sha256 "53aa6d0f061b440124e017a12d259e48dc26c16ca1b5e15ac60ef455d0a93cc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.7/adaptlypost_0.1.7_linux_arm64.tar.gz"
      sha256 "5ad0f61dda2a057228001fab14b16de973fcd343690b8355e3ad66cff23352b0"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.7/adaptlypost_0.1.7_linux_x64.tar.gz"
      sha256 "bc1e5fc42b458abd332f47d1d82327ab868531b301e5c2db8949edbfa7b1ad11"
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
