class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.20"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.20/dexcli_v0.1.20_darwin_arm64.tar.gz"
      sha256 "19f310cf2355c48397b5aecbe3f88ac18341567c4f9da09530afc3fc8bfcf001"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.20/dexcli_v0.1.20_darwin_amd64.tar.gz"
      sha256 "9bf3151040e7f0b23ae099f8e464a028e1f967c73e8bafaea60de810907c7b1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.20/dexcli_v0.1.20_linux_arm64.tar.gz"
      sha256 "898360bf6595cb8967d4671db2a8ff6f57348257a0b2cd1ac603f9e5e5fbc000"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.20/dexcli_v0.1.20_linux_amd64.tar.gz"
      sha256 "71119ee045a9de1dedde136fc5948809f91d808e21e37aac837f55167cea95d9"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
