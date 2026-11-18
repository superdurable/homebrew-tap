class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.12/dexcli_v1.47.12_darwin_arm64.tar.gz"
      sha256 "5413340f6eb84cca3b5f96ce1a883c9295ea5fa2ffe603bb4bc6232df18b8c7a"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.12/dexcli_v1.47.12_darwin_amd64.tar.gz"
      sha256 "c2448bd12df87fd3774370f91090711ac41c05d65ccb94c44bd0c2d01d1e381b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.12/dexcli_v1.47.12_linux_arm64.tar.gz"
      sha256 "ed6c2e4f4df25108064eae9c34cabe945499cf935754d9dfdaace03ec2e984fe"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.12/dexcli_v1.47.12_linux_amd64.tar.gz"
      sha256 "d996d0f7d8190f4e554d1d22e5369a94a4f2e82c03709309cad2fb5c2fc80547"
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
