class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.5.0/adaptlypost_0.5.0_darwin_arm64.tar.gz"
      sha256 "60505e4aa4c0ea380615b4c9ac67dd50e1dafc81d0b37321f9d490f3d9940c7f"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.5.0/adaptlypost_0.5.0_darwin_x64.tar.gz"
      sha256 "c701a8674f9a9a0b895c6b348332f42484aa68de9e9392eb131ced7f3d92bd6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.5.0/adaptlypost_0.5.0_linux_arm64.tar.gz"
      sha256 "0de1aacc8843297914f86ed4387c375c2663b43f5975ccb9dcd04d63850e463b"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.5.0/adaptlypost_0.5.0_linux_x64.tar.gz"
      sha256 "9829bef798a1214bed3025d68948b8c006906e25a5e7503aa46ceeec2141bf73"
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
