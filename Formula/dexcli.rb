class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.39.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.39.0/dexcli_v1.39.0_darwin_arm64.tar.gz"
      sha256 "5d1328484c30a61933f8fda71e01bd4401ef297d734dbd3fc4acb3c24efab7ea"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.39.0/dexcli_v1.39.0_darwin_amd64.tar.gz"
      sha256 "36a697c4c0d09fd017fda02cc6765cf661eadbae2a7c617af0eaba0dbebe0e1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.39.0/dexcli_v1.39.0_linux_arm64.tar.gz"
      sha256 "2e95aca3228aac9d00f988de03d7fbff01ecb1cf121b1736b8a2c15d9da23252"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.39.0/dexcli_v1.39.0_linux_amd64.tar.gz"
      sha256 "dcc4fdfac45d9c8c519c084294cbf5763741934dd82296f9227e4f27ef89c29b"
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
