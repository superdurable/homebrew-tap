class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.6.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.6.0/dexcli_v0.6.0_darwin_arm64.tar.gz"
      sha256 "1311d384dc15fadc35b9dfa8d64d657fdf44eeb731d75be72af812da91158cfd"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.6.0/dexcli_v0.6.0_darwin_amd64.tar.gz"
      sha256 "7af67aa3b7369df238e3d48e04760994d0acc5ab17e93ccf2d70cd826bca3240"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.6.0/dexcli_v0.6.0_linux_arm64.tar.gz"
      sha256 "9304bade4b02f19994b32cca81da57904dbe7bf48a4897981ae5c4689de593ce"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.6.0/dexcli_v0.6.0_linux_amd64.tar.gz"
      sha256 "7afba1fa375177b8db6d17992ed372eac672bf93320251801e985d300cdff6ee"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
