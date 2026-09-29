class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.1.1"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.1.1/dexcli_v1.1.1_darwin_arm64.tar.gz"
      sha256 "711e3fdd3cce6cdf74fbb870156d717850bccc15c9963e60b5eafec64c438b0b"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.1.1/dexcli_v1.1.1_darwin_amd64.tar.gz"
      sha256 "3d0cc0a9eb4383defac5a329302dc3358d8d9be57c4237d7036fc9e7a1a7310a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.1.1/dexcli_v1.1.1_linux_arm64.tar.gz"
      sha256 "a1765e754fcd7b6878122ff18617ee411ffb8c82a9186bca04cad66311d135ce"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.1.1/dexcli_v1.1.1_linux_amd64.tar.gz"
      sha256 "44e1a87238e273d13f512f79fa6a44fb4fc7f05aa5c879a3d67e0efd181a03cd"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
