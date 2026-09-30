class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.2.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.2.0/dexcli_v1.2.0_darwin_arm64.tar.gz"
      sha256 "5d5e37423d08008786704005de9bbaac05443b39c32ef16adf3363dc6f22dd49"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.2.0/dexcli_v1.2.0_darwin_amd64.tar.gz"
      sha256 "ff572b3b30042ed057b3aa7905174072d6bc91b42cc731731f2734d2f258bd4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.2.0/dexcli_v1.2.0_linux_arm64.tar.gz"
      sha256 "5b061389f50f391fdae7385ca5adfa01480364c4a3f1a10698af965084fdef9d"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.2.0/dexcli_v1.2.0_linux_amd64.tar.gz"
      sha256 "1f623b11deab3f634d904f916515ae26a344ec9d81c185ca1970db9b972c81d7"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
