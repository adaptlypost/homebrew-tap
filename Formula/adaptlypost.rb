class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.8.0/adaptlypost_0.8.0_darwin_arm64.tar.gz"
      sha256 "e5f35e69446e94d068964728c14399fc6dde4f8af78f5b2dedcc9cdf77206111"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.8.0/adaptlypost_0.8.0_darwin_x64.tar.gz"
      sha256 "1d5c86659c3aa0ebc0a1bc4026ff97e31a0541f715e6a03cb11a94390e83943c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.8.0/adaptlypost_0.8.0_linux_arm64.tar.gz"
      sha256 "208c1893be13e3e9f8ef98233e90d04df44da0a4cd89d1bfbd8fd1570287f347"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.8.0/adaptlypost_0.8.0_linux_x64.tar.gz"
      sha256 "63b5ba5255c4ecb6d1f018aa2c8f147961edd40552c13ce3f95f56e59ff44ad3"
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
