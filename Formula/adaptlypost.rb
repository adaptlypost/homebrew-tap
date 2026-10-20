class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.12.0/adaptlypost_0.12.0_darwin_arm64.tar.gz"
      sha256 "1f2d197d00dd900971c8c401e844881b9c39bd93eb75610f210f188f92ab9c3b"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.12.0/adaptlypost_0.12.0_darwin_x64.tar.gz"
      sha256 "1ecc995b93e7ac6b58c310baf21a0cf8d9f4aaa76091721734b95243c8f248a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.12.0/adaptlypost_0.12.0_linux_arm64.tar.gz"
      sha256 "3539fbc35b331c87a7f29c9315fee4fcd50a64ee5f98a9b3b70b924877f9f589"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.12.0/adaptlypost_0.12.0_linux_x64.tar.gz"
      sha256 "c1d3fa0d1e3b3b131de8fb1312a32a5f60454f1f5b35abf386d83ed1172827ba"
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
