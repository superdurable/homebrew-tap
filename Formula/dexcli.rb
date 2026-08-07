class Dexcli < Formula
  desc "Run Dex, Dex Web, and a local Temporal development server"
  homepage "https://github.com/superdurable/dex"
  version "0.1.4"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.4/dexcli_v0.1.4_darwin_arm64.tar.gz"
      sha256 "2438af4eea255e371021e3f4d5ae260b096d4abe755a3e5bbcec309539c722dc"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.4/dexcli_v0.1.4_darwin_amd64.tar.gz"
      sha256 "53346897e7ce8ca8bea7a836bb64b6c65a647c6eb94c58b6605338a7a082f977"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.4/dexcli_v0.1.4_linux_arm64.tar.gz"
      sha256 "87c299d51ce5a96aae04e287f3cd53fec197cec0c8fb40db48ee91f377179e8a"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.4/dexcli_v0.1.4_linux_amd64.tar.gz"
      sha256 "9a40f052af82dfccee506e7603c06908d7bf23c548dd56517bae1511f27758db"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
