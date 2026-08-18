class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.9"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.9/dexcli_v0.1.9_darwin_arm64.tar.gz"
      sha256 "5932237ea9fba5e49dd2cdb6ff610a7df679cb1d8f7e815029f80c9fd0e1cc90"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.9/dexcli_v0.1.9_darwin_amd64.tar.gz"
      sha256 "cf4a0ef4c2b37206a4c0eed77aa61e1e33733f9499f9b654a5dc02b4f14b1640"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.9/dexcli_v0.1.9_linux_arm64.tar.gz"
      sha256 "c50f6c7c6b95cab10bdaf9a9e9532c3b0ef04b105d03c304f31f012cb1ce0acb"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.9/dexcli_v0.1.9_linux_amd64.tar.gz"
      sha256 "69c7c63c9552e1e4a7ed347260c53ab5edadbb7f0df5df22a7e54404f2471d12"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
