class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.15/dexcli_v1.47.15_darwin_arm64.tar.gz"
      sha256 "05385d834e4fb01c2c40ae6a77fa7f2774d6ce7677ba0fc4230b9dd3b54377d6"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.15/dexcli_v1.47.15_darwin_amd64.tar.gz"
      sha256 "f99a0df0bb14585c50e5be398146dd27547a43ad0b27a580bd7947d99653ffee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.15/dexcli_v1.47.15_linux_arm64.tar.gz"
      sha256 "9ae709da02aab2233cba23defad0993084f36f64767da1878d88a305f5be01c7"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.15/dexcli_v1.47.15_linux_amd64.tar.gz"
      sha256 "1434a4cee9231baff64bd642c3107e6f7648c94fe87417a1af345aa97c79494d"
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
