class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.11/dexcli_v1.47.11_darwin_arm64.tar.gz"
      sha256 "e4a2747a717dc874c52441b108cde3ca64e6fb273d967ee569dd0278140df777"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.11/dexcli_v1.47.11_darwin_amd64.tar.gz"
      sha256 "35554dd03e7585a960dc869b3c747c43cff090b2e927c2ffebf6ac1071bf1833"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.11/dexcli_v1.47.11_linux_arm64.tar.gz"
      sha256 "89fcbae36e4019ca8e1db91d12c5008e0e44647fbf63a0fdd7314195c5868a7f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.11/dexcli_v1.47.11_linux_amd64.tar.gz"
      sha256 "b9aa047b84aae9a6c473dbe1de83ff4ae978489ba3eaed415a34934dc4ba747c"
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
