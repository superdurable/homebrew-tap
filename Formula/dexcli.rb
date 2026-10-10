class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.6.3"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.3/dexcli_v1.6.3_darwin_arm64.tar.gz"
      sha256 "4840a8ca9347ff44bc143366eeecdd56f228dfbb32500d956d9390b2b4d79913"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.3/dexcli_v1.6.3_darwin_amd64.tar.gz"
      sha256 "34400fa8f9ec4d5f9ced55da7f1d457a334c9e5cbc32faaaaca8ecf1a10c1c0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.3/dexcli_v1.6.3_linux_arm64.tar.gz"
      sha256 "4f67ea69b7d2ce34cc9aed72d8b371140aa58a3e282e25df91abc6551d9616a1"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.3/dexcli_v1.6.3_linux_amd64.tar.gz"
      sha256 "5f66be106fb5376a6800599b271d489d299a98c0600baf3fb0d43cc24c5b8baf"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
