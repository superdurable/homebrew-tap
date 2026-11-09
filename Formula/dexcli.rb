class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.40.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.40.1/dexcli_v1.40.1_darwin_arm64.tar.gz"
      sha256 "fe9179cca5373c4d4cd8da1afbe95680d87199d56310e56d4c1785c5dfdbc00f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.40.1/dexcli_v1.40.1_darwin_amd64.tar.gz"
      sha256 "ed9325a1242e6c72e45f00607f464d9b7c45608e60efa91a865b3de4d17089da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.40.1/dexcli_v1.40.1_linux_arm64.tar.gz"
      sha256 "df7ea8bbc3cfb961ff18b320884b18136a8fc1fd2dd1212f1a2809936f34674b"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.40.1/dexcli_v1.40.1_linux_amd64.tar.gz"
      sha256 "943b0e6572b4222da2c4780347433074adbe046ea2f92fd740b6e996deebf3b9"
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
