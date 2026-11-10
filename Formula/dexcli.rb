class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.42.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.42.0/dexcli_v1.42.0_darwin_arm64.tar.gz"
      sha256 "6ba1e5f503c2a6ecac199fdb82330adfeda02b771750aaebcb75b5dddc855225"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.42.0/dexcli_v1.42.0_darwin_amd64.tar.gz"
      sha256 "9fbe56f62cf232dce71237b4251900f57ba3895b29f318ea659818337c0f8cad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.42.0/dexcli_v1.42.0_linux_arm64.tar.gz"
      sha256 "9dd6a468e5898addd2b96ac41c98408d8e42167443866823700268bdd05ca5a0"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.42.0/dexcli_v1.42.0_linux_amd64.tar.gz"
      sha256 "87d0fb7b5860515a62247557f68f8fa7edba8c3b31ddd67c56c51c58656c6f45"
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
