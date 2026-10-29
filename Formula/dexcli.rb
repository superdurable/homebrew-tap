class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.26.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.26.1/dexcli_v1.26.1_darwin_arm64.tar.gz"
      sha256 "c383446bd1054933dd0106ae5bb40854f104ab83cf874edaca80faf988051202"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.26.1/dexcli_v1.26.1_darwin_amd64.tar.gz"
      sha256 "2d3f2b6a6a7225afb6416378391c69965f66dd23cc0995acd59d1b8c6ec52702"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.26.1/dexcli_v1.26.1_linux_arm64.tar.gz"
      sha256 "d08904cc2aec8b33fbbda1a74efe7e916d6c7d6aef6e8f84668d2cf1b7807969"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.26.1/dexcli_v1.26.1_linux_amd64.tar.gz"
      sha256 "7eb3d57d0c7509db767e4eef3992cdff83ceaacfdbfc16d9f22f15073f1c3170"
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
