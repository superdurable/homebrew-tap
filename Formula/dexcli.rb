class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.11.4"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.4/dexcli_v0.11.4_darwin_arm64.tar.gz"
      sha256 "2423f7f47de769d575d1e9948c2eba22fb7e6340da3a5c79a82aec826888149f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.4/dexcli_v0.11.4_darwin_amd64.tar.gz"
      sha256 "357a6fc7b5857ee93ca3153f27c71f3d1d174660599de2aae313ae2b86d4276b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.4/dexcli_v0.11.4_linux_arm64.tar.gz"
      sha256 "91e95ae297743d47b0c9b485049f0d2266ce5f46a89de4035abceecd7eb51f33"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.4/dexcli_v0.11.4_linux_amd64.tar.gz"
      sha256 "2764200f9652008e2e56a046d5d74a87fdd5aa88193db92099161426d487536f"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
