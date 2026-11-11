class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.45.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.45.0/dexcli_v1.45.0_darwin_arm64.tar.gz"
      sha256 "f8989005c282e21580fb4d543daff843276c8dcdb211d65d062994b9124b6b62"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.45.0/dexcli_v1.45.0_darwin_amd64.tar.gz"
      sha256 "b7a4d4957bb1724bc1296fcc6c48d6e1a73e009ca63d9d714bd21f2e5d834444"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.45.0/dexcli_v1.45.0_linux_arm64.tar.gz"
      sha256 "fbe23dc34bd6ab91f60dba733c7c68918deaa78054be0c3f8f7ee3cfbb1a2281"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.45.0/dexcli_v1.45.0_linux_amd64.tar.gz"
      sha256 "9b50703b1ea386635ce0416735d23fe9d05e0b8a2a5a4c3567bca17347305ccd"
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
