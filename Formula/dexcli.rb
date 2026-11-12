class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.0/dexcli_v1.47.0_darwin_arm64.tar.gz"
      sha256 "dd277d36992199b10fddf9e796c48f4da50f700834ee9c7ee8dbe7ff4bfcea9c"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.0/dexcli_v1.47.0_darwin_amd64.tar.gz"
      sha256 "74d548c23f38de2f38a9570d0e1a5359a4d859f998096c2d51ab3bf6710ed7fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.0/dexcli_v1.47.0_linux_arm64.tar.gz"
      sha256 "c6cb51b94edfa21950558f002edcb06848fac7e4f39fc864a49e2c2037546a04"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.0/dexcli_v1.47.0_linux_amd64.tar.gz"
      sha256 "a1e0836300d1705025b20f2a74815e2dcdae519ead557b2fad9b0d3bdc2765f8"
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
