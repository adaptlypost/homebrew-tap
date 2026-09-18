class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v#{version}/adaptlypost_#{version}_darwin_arm64.tar.gz"
      sha256 "2a899fbd009fb0f0fb638101a2e4eea984d62469f297ef8d15f5299f7619f214"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v#{version}/adaptlypost_#{version}_darwin_x64.tar.gz"
      sha256 "abc9a0612f8b0a1ab652d7b309bccfa30bfd7fa109089c67b1c38203d19b0a7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v#{version}/adaptlypost_#{version}_linux_arm64.tar.gz"
      sha256 "564ed47991d8f954cd658e49cbc5695cdcb02ebb03d6d6b2daf7dab6c1968f1d"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v#{version}/adaptlypost_#{version}_linux_x64.tar.gz"
      sha256 "10a0f8a8757fe11c48982e4ba23845325f0e530efb5c7f7f2c8ef81791360258"
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
