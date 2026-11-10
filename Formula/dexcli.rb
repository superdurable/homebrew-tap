class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.41.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.41.1/dexcli_v1.41.1_darwin_arm64.tar.gz"
      sha256 "97440af4fc09d6eb8df444557b1d54b54f1d5d02e92e54f22294b736f3e045c5"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.41.1/dexcli_v1.41.1_darwin_amd64.tar.gz"
      sha256 "82cb4fba8a2bf68ed7ec18453de3960f16b7bc712c5534e8e62ace1a163ea732"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.41.1/dexcli_v1.41.1_linux_arm64.tar.gz"
      sha256 "d73e443fc93d28414d4f298572e731d0b0d06055a4b1ead8f6f8e79ec38cf9d0"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.41.1/dexcli_v1.41.1_linux_amd64.tar.gz"
      sha256 "e3c139f52a0293d34ef3070fd01004712a945619676f1e9e07fff6c84b794263"
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
