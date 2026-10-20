class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.10.0/adaptlypost_0.10.0_darwin_arm64.tar.gz"
      sha256 "f664e6c6de1d86306d47d7f357e4309309478ebf175f32770aa618e11dcf1ceb"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.10.0/adaptlypost_0.10.0_darwin_x64.tar.gz"
      sha256 "a05e47d8d5c6420009794cb09277321c8f79eb770947d4d6ed076ba48e625afa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.10.0/adaptlypost_0.10.0_linux_arm64.tar.gz"
      sha256 "4a92d0b11ceb807f64331c9a0ce7be786905d5986d049d94c31b4781d43163d2"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.10.0/adaptlypost_0.10.0_linux_x64.tar.gz"
      sha256 "1ca9231955d9e90ff608dfac87dd1a1c2951e41a14d7230dd0eabae4694a8fa2"
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
