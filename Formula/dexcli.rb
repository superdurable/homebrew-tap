class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.10/dexcli_v1.47.10_darwin_arm64.tar.gz"
      sha256 "0001556383d34114bafd9cf6a97667bf06b4bb09e2599b9f1d84ad0fa6d455b3"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.10/dexcli_v1.47.10_darwin_amd64.tar.gz"
      sha256 "eb705fb4e17bb38aa2e2703c7c4588ac07437ad4fcbcd2220d7defda5a7ab465"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.10/dexcli_v1.47.10_linux_arm64.tar.gz"
      sha256 "ac0ba6e1e0b221fc73c8a9d12fc79dec07726a29eb035ea32322387629550f52"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.10/dexcli_v1.47.10_linux_amd64.tar.gz"
      sha256 "51ff2d4c0b31ab8a037e724fcfb5936fd735893fbb0a2fd53c558c5330785504"
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
