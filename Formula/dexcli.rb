class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.9.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.9.0/dexcli_v0.9.0_darwin_arm64.tar.gz"
      sha256 "4ee2df39d0218169b5fe0fc581e9cac2c1f40e24a011ac5c5ba441eccdfd1f51"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.9.0/dexcli_v0.9.0_darwin_amd64.tar.gz"
      sha256 "071f530422e869554b2e2a2dc10ce5d917e1093a38a5af4e1438192e9c532408"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.9.0/dexcli_v0.9.0_linux_arm64.tar.gz"
      sha256 "68f5771cde6ae4a1cfb8c78efb35881765273d4727d6353de41d6b4252476d67"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.9.0/dexcli_v0.9.0_linux_amd64.tar.gz"
      sha256 "0df459cdde367191e7c962b819a1491073b614da93f5459129f38f90970a7016"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
