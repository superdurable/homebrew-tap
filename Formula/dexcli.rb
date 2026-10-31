class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.31.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.31.0/dexcli_v1.31.0_darwin_arm64.tar.gz"
      sha256 "6da49f7010007d1860d9192d9f590cb6747210ff1a678d1beab0135459149ce3"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.31.0/dexcli_v1.31.0_darwin_amd64.tar.gz"
      sha256 "4da7c567c00d7ad078433c39e6906210ed49401fd8d5adc88dfa0755a3d01015"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.31.0/dexcli_v1.31.0_linux_arm64.tar.gz"
      sha256 "9c28ece23afd0554fbe72c1672e427a0eb6874f79ec9cf51c2e48d35a82a69b6"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.31.0/dexcli_v1.31.0_linux_amd64.tar.gz"
      sha256 "073128ea0e392d9f7face662e20378d218a4906ea1af2816855cb05fae05678b"
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
