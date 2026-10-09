class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.6.1"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.1/dexcli_v1.6.1_darwin_arm64.tar.gz"
      sha256 "5d79cee6089e9a18313908de53f34f0e13d777fb9f53a9fd1a39f9a56522f663"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.1/dexcli_v1.6.1_darwin_amd64.tar.gz"
      sha256 "72ea4b667758a43467812b76aca6d4f6aa61cf5d1f95a45fffc2186c2feb4f04"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.1/dexcli_v1.6.1_linux_arm64.tar.gz"
      sha256 "f9a776bd37950809579b5f2d4a2676eaad20475af49ffd2d31eae3d1c1136f15"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.1/dexcli_v1.6.1_linux_amd64.tar.gz"
      sha256 "614dd2e7278fd3d2ced1f55a47d991f9aad235d265354665756429d3c091b87d"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
