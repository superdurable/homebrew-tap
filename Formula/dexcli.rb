class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.11.1"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.1/dexcli_v0.11.1_darwin_arm64.tar.gz"
      sha256 "d5de0dc58e456f9dcd62fc44998b99babc5103ef83becee990d939c23b37380e"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.1/dexcli_v0.11.1_darwin_amd64.tar.gz"
      sha256 "eba33d273dc79f73b8bc6642ced33deaf76871ffb7d47d8a9009cc2eff59ff8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.1/dexcli_v0.11.1_linux_arm64.tar.gz"
      sha256 "f5cf9c6228eca1b76bcc52c8cfca70d05ae89d4c42f0558f618dc942e8c52540"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.1/dexcli_v0.11.1_linux_amd64.tar.gz"
      sha256 "92ca91c5fec9cb1315c9e3f006f37e8f5f6711dd5d0ac1efb8d682da9ee64ac0"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
