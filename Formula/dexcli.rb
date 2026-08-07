class Dexcli < Formula
  desc "Run Dex, Dex Web, and a local Temporal development server"
  homepage "https://github.com/superdurable/dex"
  version "0.1.5"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.5/dexcli_v0.1.5_darwin_arm64.tar.gz"
      sha256 "c5c2ca820d4d182fa996b2baa6e9923f49a343c7a66dd769ec19f5d146e558ca"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.5/dexcli_v0.1.5_darwin_amd64.tar.gz"
      sha256 "ce447566cf1a3bfa78236bb32c1843e3b5ad620559c64db1abe87bd35587506d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.5/dexcli_v0.1.5_linux_arm64.tar.gz"
      sha256 "410041f42b1866d936527ef7d1d9c18a6963c760d3b6b2104293db8663255404"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.5/dexcli_v0.1.5_linux_amd64.tar.gz"
      sha256 "a9d4b2590245af03e79f1dd9d5215ed9def2f105a551b763619e7e348b0b6a7a"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
