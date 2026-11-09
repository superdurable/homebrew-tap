class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.39.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.39.1/dexcli_v1.39.1_darwin_arm64.tar.gz"
      sha256 "989b3b7a664ac2e55986fb7893379b388a96ed9feb38aa96ed86f92f020029fa"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.39.1/dexcli_v1.39.1_darwin_amd64.tar.gz"
      sha256 "f70cc2ed95995102a6e43123e324dff046d329511ea80c6bd150389de549e2db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.39.1/dexcli_v1.39.1_linux_arm64.tar.gz"
      sha256 "e72f0cd332b9a7ea7016567b3aeacb5ec6c10f292884dad5dfee9c5cea6a9d57"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.39.1/dexcli_v1.39.1_linux_amd64.tar.gz"
      sha256 "6754c7f34f24fdfcb9db16606607eac05f4ed80b8bb83f0cd90f69cdcccb67a4"
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
