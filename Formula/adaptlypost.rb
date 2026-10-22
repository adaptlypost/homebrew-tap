class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.13.0/adaptlypost_0.13.0_darwin_arm64.tar.gz"
      sha256 "5475168c5535f4824eae9d7bdb6cf69aba0e1c6b707bdbbd7637a9a07416c031"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.13.0/adaptlypost_0.13.0_darwin_x64.tar.gz"
      sha256 "46064f396e00593ae82ca74d43c6157ac55572faf85fb63b8f2576beebadcb80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.13.0/adaptlypost_0.13.0_linux_arm64.tar.gz"
      sha256 "32b923cf0960353aad42edcb2d8ebd2b099f657ca315efb22bc11317f6bf0698"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.13.0/adaptlypost_0.13.0_linux_x64.tar.gz"
      sha256 "f7bf1f8a6a304e9134262d9caf99447b3a8413dd51458b8570f8f9a0857ce0a4"
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
