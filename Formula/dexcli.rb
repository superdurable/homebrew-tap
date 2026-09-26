class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.13.8"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.8/dexcli_v0.13.8_darwin_arm64.tar.gz"
      sha256 "27d1fa8fac1f065ab8f9b4eca7dff0e0ddb8d18200f6d8fef178f4236ef9bf65"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.8/dexcli_v0.13.8_darwin_amd64.tar.gz"
      sha256 "e2058b45dadb14e5ec7e38c1f444026e338c9d4be0d2ec1837cfbfd803dcd286"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.8/dexcli_v0.13.8_linux_arm64.tar.gz"
      sha256 "13a5d8f23e206f0fbf1db20b23f87d70274f57a3d8074afae839fc56c8e96efd"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.8/dexcli_v0.13.8_linux_amd64.tar.gz"
      sha256 "be4779482e4033d8c897d24821a7f1dd58f25dcaab933bbcf2039603e8239575"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
