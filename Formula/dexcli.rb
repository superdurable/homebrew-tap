class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.43.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.43.0/dexcli_v1.43.0_darwin_arm64.tar.gz"
      sha256 "23da4b3fd14de8cb9dcc170624d87764c48f34b94945920f34b20a260807dbfa"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.43.0/dexcli_v1.43.0_darwin_amd64.tar.gz"
      sha256 "0f8d759784fab85655f514ecff247c8a13d8d23f1405909d9b2eb6a18769981f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.43.0/dexcli_v1.43.0_linux_arm64.tar.gz"
      sha256 "13f29a22a64df73c806a757da09c144c355d2a42ed7141160c608442c488d2fc"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.43.0/dexcli_v1.43.0_linux_amd64.tar.gz"
      sha256 "57034241a75a21486552492874e347942e98650d2784e6f57b00a6a26cfeb9b5"
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
