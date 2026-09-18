class Adaptlypost < Formula
  desc "Schedule, publish and measure social posts from your terminal"
  homepage "https://adaptlypost.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.1/adaptlypost_0.1.1_darwin_arm64.tar.gz"
      sha256 "47409ab13b99e3a368aa68a904e213b054aee0e00676750cf56f93781a87920b"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.1/adaptlypost_0.1.1_darwin_x64.tar.gz"
      sha256 "b3c9baa0a569ecbcc9d80f8e1d8ebc7138a98e57b911ffbf46114337f036abe0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.1/adaptlypost_0.1.1_linux_arm64.tar.gz"
      sha256 "349545e4088efb96ea505bdf20a5ef0f92f8bf90ed974eeae485285df13a3552"
    end
    on_intel do
      url "https://github.com/adaptlypost/adaptlypost-cli/releases/download/v0.1.1/adaptlypost_0.1.1_linux_x64.tar.gz"
      sha256 "c8b2d3849efb1088bc9f214f76d21192fe743b15eb3c6d8aab02be0e3e3cd42a"
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
