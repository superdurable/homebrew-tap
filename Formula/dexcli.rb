class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.27.0/dexcli_v1.27.0_darwin_arm64.tar.gz"
      sha256 "c23a553ecdee7fb126b90fdeb36fd223c9e4cff1668fcb0b410ac4c4767fae26"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.27.0/dexcli_v1.27.0_darwin_amd64.tar.gz"
      sha256 "f7dd1fce105e4329618aba846d4a1497485ee018cc6b103953974d9f7688ba84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.27.0/dexcli_v1.27.0_linux_arm64.tar.gz"
      sha256 "5c4e83d0b2e3c7a27d5614afb9c142e2455d510ceb44ab54cda5f571f64af923"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.27.0/dexcli_v1.27.0_linux_amd64.tar.gz"
      sha256 "3035685924e9ed6fbf774044c0e6e13cd563016e18933933221c3c920700ce59"
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
