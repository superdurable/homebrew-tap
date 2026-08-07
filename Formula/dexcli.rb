class Dexcli < Formula
  desc "Run Dex, Dex Web, and a local Temporal development server"
  homepage "https://github.com/superdurable/dex"
  version "0.1.6"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.6/dexcli_v0.1.6_darwin_arm64.tar.gz"
      sha256 "9ae08c54b0f7c22839007d3db499999a631d6ed75bc71e98df503237665ec2e8"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.6/dexcli_v0.1.6_darwin_amd64.tar.gz"
      sha256 "44a23176adfa944daf8d40d3ef91611c121319feb4df21dc8340f22ebc0544d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.6/dexcli_v0.1.6_linux_arm64.tar.gz"
      sha256 "54c1e7156bd05c9aaf3e818da3400dfb6b3e1d639ab0cd1f6578a26a6b1dd4ac"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.6/dexcli_v0.1.6_linux_amd64.tar.gz"
      sha256 "556389a7f5f2cb564dbf4da43d1028cb81a78d6551288532fa3e20b7bad5c841"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
