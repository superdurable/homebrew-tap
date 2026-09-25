class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.13.3"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.3/dexcli_v0.13.3_darwin_arm64.tar.gz"
      sha256 "84d3921507367da64de94a6245509f7f5e602eef4fc9015cd8cc39801124dc12"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.3/dexcli_v0.13.3_darwin_amd64.tar.gz"
      sha256 "16666cd315dcd0cbc151f092daaa925193829baff6dee4f2ce653451ca22cb8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.3/dexcli_v0.13.3_linux_arm64.tar.gz"
      sha256 "121e5081baa4033dc2f1b19633d5fc8d791d9fd73ad7c221e388ecbcb64e91e1"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.3/dexcli_v0.13.3_linux_amd64.tar.gz"
      sha256 "1df85f5bad640c3d787132e39964063ae104ea7dc440e7e47fe92701d01a982f"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
