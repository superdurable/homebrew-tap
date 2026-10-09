class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.6.2"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.2/dexcli_v1.6.2_darwin_arm64.tar.gz"
      sha256 "cb5c8d2171d4d5ef7dcc9df94fedb84ee6a655ea630125b3ffdb7530aa057df0"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.2/dexcli_v1.6.2_darwin_amd64.tar.gz"
      sha256 "8b1f6b28bd67648835543e38ad1d1b32a85f6e4387897d9b6db896817992b764"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.2/dexcli_v1.6.2_linux_arm64.tar.gz"
      sha256 "2d0d05e214212da5899ceb6bd79819f4de9a8d2b9f958d784aa84d5f2c5c7f1d"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.2/dexcli_v1.6.2_linux_amd64.tar.gz"
      sha256 "292b7e388e0482ff982de8062d805d029ed1854eb55341a4f57cdaf0276e93fc"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
