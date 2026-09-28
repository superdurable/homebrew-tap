class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.14.2"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.14.2/dexcli_v0.14.2_darwin_arm64.tar.gz"
      sha256 "80a78165ad200f2cae5f7ad8762f44bbf4f3363f19e094fd990d098ee4fe8b1b"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.14.2/dexcli_v0.14.2_darwin_amd64.tar.gz"
      sha256 "dff82571435cad839c1c97632fd7a3e1a211bf7bed8a2515593a823305c989ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.14.2/dexcli_v0.14.2_linux_arm64.tar.gz"
      sha256 "fee27609aae728343ad49febb45f48f05f8ee0214d9bb4f1716fff9db1421903"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.14.2/dexcli_v0.14.2_linux_amd64.tar.gz"
      sha256 "92c51b52f7de591f5fff02e17f2ce9a5032d77b65a9bc512a9b6bfdc46cf3352"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
