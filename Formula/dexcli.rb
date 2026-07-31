class Dexcli < Formula
  desc "Run Dex, Dex Web, and a local Temporal development server"
  homepage "https://github.com/superdurable/dex"
  version "0.1.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.0/dexcli_v0.1.0_darwin_arm64.tar.gz"
      sha256 "8b1c1156160ce69a38209c09bdd813ba09f2ddc82e75b7296ca40597e8a076a4"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.0/dexcli_v0.1.0_darwin_amd64.tar.gz"
      sha256 "531e3f048301c237c3648bd4963ddea476cb120ac3ec8435c956d63596e32268"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.0/dexcli_v0.1.0_linux_arm64.tar.gz"
      sha256 "b6d81aee596220e7037cfb1b67894684a01c4ad74b5c3374cdf5a03ae6966b71"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.0/dexcli_v0.1.0_linux_amd64.tar.gz"
      sha256 "b5082af1c034fe648f6726f851ae5d6562d7f30ca948eba6aea5c77d395d83b4"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
