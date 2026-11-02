class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.33.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.33.0/dexcli_v1.33.0_darwin_arm64.tar.gz"
      sha256 "5701c7bbc9f766b029309b23cf82c94a4a620504787b4b28e5039a3795044fe6"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.33.0/dexcli_v1.33.0_darwin_amd64.tar.gz"
      sha256 "de47d093eaa13a07409366147775babc1c8d5b433624c25562cfa21aa3c44006"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.33.0/dexcli_v1.33.0_linux_arm64.tar.gz"
      sha256 "66102408d92e5b53b5a4485806c5271f6bd1010ad85c94c45339de4c0d104fb9"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.33.0/dexcli_v1.33.0_linux_amd64.tar.gz"
      sha256 "f6d7506d227e9de5e90723122bb3292d69d2c33adc42e0db0b80bbb55ec737a5"
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
