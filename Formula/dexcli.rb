class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.3.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.3.0/dexcli_v1.3.0_darwin_arm64.tar.gz"
      sha256 "72a151a1fbb937ac436c5ec1d6f321b2ba26881ea6a1401543c565ae5729dbe2"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.3.0/dexcli_v1.3.0_darwin_amd64.tar.gz"
      sha256 "72b490740237afad0bc10adecf842620a2170256d4dd5ab38da2a4d218d1007a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.3.0/dexcli_v1.3.0_linux_arm64.tar.gz"
      sha256 "720e4071f7ea592147758374868d47b2c7fef0c5facb7f71b8fab4d8b01819dc"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.3.0/dexcli_v1.3.0_linux_amd64.tar.gz"
      sha256 "21f0037f49751477948daadbab5afcae59ddb771e731c959057459f8a7dbaa9b"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
