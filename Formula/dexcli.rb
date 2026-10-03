class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.5.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.5.0/dexcli_v1.5.0_darwin_arm64.tar.gz"
      sha256 "47efb5252a74f05322aa930283ff0200ba04a12b4d0e9965f994b0b1eeccc859"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.5.0/dexcli_v1.5.0_darwin_amd64.tar.gz"
      sha256 "3ad34fb6f92497934d66f162bec8fc9ae04ca1ce1e28686add598f31991564ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.5.0/dexcli_v1.5.0_linux_arm64.tar.gz"
      sha256 "e6eaf0ea5a422bf75a0d28bfcf0ea8c0bb63b5708e784c88280449f497061dd4"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.5.0/dexcli_v1.5.0_linux_amd64.tar.gz"
      sha256 "d60d0b4581a789b7785268d5923cb96f90db26af0783e223616f4e71d54de152"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
