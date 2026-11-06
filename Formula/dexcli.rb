class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.37.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.37.0/dexcli_v1.37.0_darwin_arm64.tar.gz"
      sha256 "152456ed659da973381c9590d7f703203a776c30eead1e8f678987e51e953a76"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.37.0/dexcli_v1.37.0_darwin_amd64.tar.gz"
      sha256 "7295e8e6bd52f1d7b9e1010c888de56596ad65bf87fa1cc35bf26ecfa4a3271e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.37.0/dexcli_v1.37.0_linux_arm64.tar.gz"
      sha256 "426ce4436bc028b2071ad65e4b6ab18ce6407ca2b8be1c4f1baf5afbd89a9ebf"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.37.0/dexcli_v1.37.0_linux_amd64.tar.gz"
      sha256 "e03bc0e5f353fe3e00798382076ec9f16d334a79dd59f94f3dac29014a879bc3"
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
