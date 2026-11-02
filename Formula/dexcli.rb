class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.34.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.34.0/dexcli_v1.34.0_darwin_arm64.tar.gz"
      sha256 "99fea7b69b884d4a977513338cf2175be11b302440838884413962a0c52ef560"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.34.0/dexcli_v1.34.0_darwin_amd64.tar.gz"
      sha256 "05a380ad044c30430ad763b498bedad3a58adf415bb3ff0fca5d08085c074bda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.34.0/dexcli_v1.34.0_linux_arm64.tar.gz"
      sha256 "e334b1638f84e504ab868ccdb1bb9d17b7e17b9d1cfc2859e5d3a264844da468"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.34.0/dexcli_v1.34.0_linux_amd64.tar.gz"
      sha256 "30f721f3b04da25f46f5a91bcd3acb43cd846e9f39d2332857723a475e7982e8"
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
