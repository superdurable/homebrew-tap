class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.40.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.40.0/dexcli_v1.40.0_darwin_arm64.tar.gz"
      sha256 "3a77f331fc722b9f3f59a8e95f9998cb322e4b5465049dfb06933054ee589ac6"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.40.0/dexcli_v1.40.0_darwin_amd64.tar.gz"
      sha256 "3fb34b9d4e5d0719403128fbb4ec32505e5496646c71c4deddc9cd509c067928"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.40.0/dexcli_v1.40.0_linux_arm64.tar.gz"
      sha256 "8052d9911f699cd9db5734ab72a803bd6646901f50b6ca8c0c7af7ae6edb2792"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.40.0/dexcli_v1.40.0_linux_amd64.tar.gz"
      sha256 "a1351f044d6065c52be2fc7c3ad7a1a59f62dbeef7201b03582140e3806e111f"
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
