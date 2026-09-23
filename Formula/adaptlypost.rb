class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.6/adaptlypost_0.1.6_darwin_arm64.tar.gz"
      sha256 "1d932ac5552f540fc0c5f9cd4ea6e7d00a77529fd7b6cee829d492730d0e8150"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.6/adaptlypost_0.1.6_darwin_x64.tar.gz"
      sha256 "1ba7734a8e96e25549fe59b1b29b6498835f4c2e17d1dfa65062668fb6716ffd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.6/adaptlypost_0.1.6_linux_arm64.tar.gz"
      sha256 "f839e3864b8493585e76423f69d7a691483afd7eaeb4f9a5ef6296fb7a2e0f77"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.6/adaptlypost_0.1.6_linux_x64.tar.gz"
      sha256 "898e06eb04e7c23b933d5b5f4553d8896c29a3402bd194bb76d74fbbd26d62c6"
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
