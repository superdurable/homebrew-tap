class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.28.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.28.1/dexcli_v1.28.1_darwin_arm64.tar.gz"
      sha256 "a19abaa80c792e764620c572ddc019c33c4ed7b98560be21f0173d136ad4b62d"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.28.1/dexcli_v1.28.1_darwin_amd64.tar.gz"
      sha256 "95370028b0f3ebb26cd56b96db3132e0155086780bd56ea4b2e280e9dd21fb31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.28.1/dexcli_v1.28.1_linux_arm64.tar.gz"
      sha256 "9daaf1f11ab35c4af35cd2a930b332687a91d74cfcbf098a8be104f384422836"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.28.1/dexcli_v1.28.1_linux_amd64.tar.gz"
      sha256 "7d7624ef7bcd50c35ca6d19ee76f9b62b4047507e86914538b1c8e32d07fa01a"
    end
  end

  def install
    bin.install "dexcli", "dex-server-zd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
    assert_match "dex-server-zd", shell_output("#{bin}/dex-server-zd --version")
  end
end
