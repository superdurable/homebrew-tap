class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.21/dexcli_v1.47.21_darwin_arm64.tar.gz"
      sha256 "7a274ddcd03d99acd8446ee1255b19c8b4de365cbbe9d735e104e1b58f9c84c1"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.21/dexcli_v1.47.21_darwin_amd64.tar.gz"
      sha256 "b2da07c821dcc7ec70d08aab23be47775ec1b8ea5c76a7a242ed881f30495275"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.21/dexcli_v1.47.21_linux_arm64.tar.gz"
      sha256 "9202ef9b9ab4fd5e5e00d3c7593e3072bee25b5ea84b08854c5bd0b560c83644"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.21/dexcli_v1.47.21_linux_amd64.tar.gz"
      sha256 "c37dbeab0d83e7e1e90570c1be9c04e7cacfbbc485ec9671e13bc4466afcbc28"
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
