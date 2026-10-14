class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.7.0/adaptlypost_0.7.0_darwin_arm64.tar.gz"
      sha256 "f9ccb8aac78fd02605bf72c6dea5b9e1df7d396234381a2769317c3c535153bb"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.7.0/adaptlypost_0.7.0_darwin_x64.tar.gz"
      sha256 "20c3b8eb4258ed0741c693aca5891ec873fef3118bfbdfab193733eb92d401cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.7.0/adaptlypost_0.7.0_linux_arm64.tar.gz"
      sha256 "f2c3d53e99d674b26d77c5b350d24b7b877cd61912bc3c4b0e8d2e57e3668181"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.7.0/adaptlypost_0.7.0_linux_x64.tar.gz"
      sha256 "51d00c7938b2bd5db0cc2b9af5fc276ee0f66a1bd0bfaa85ce0db15b214d50ce"
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
