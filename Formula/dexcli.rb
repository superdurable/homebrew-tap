class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.17.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.17.0/dexcli_v1.17.0_darwin_arm64.tar.gz"
      sha256 "87a59a2f993d3bda4a2b2e0a17695d886a6ef406d7746d4b503be6fd7f668cb8"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.17.0/dexcli_v1.17.0_darwin_amd64.tar.gz"
      sha256 "de72b0d44eea8e8c9c2d103227f7ad85d7f0f4709f245ffbbe1c73a14cab5964"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.17.0/dexcli_v1.17.0_linux_arm64.tar.gz"
      sha256 "ee9a7be23996674fd246dc961accbe061c5afff67c19394e50de27ff077aafeb"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.17.0/dexcli_v1.17.0_linux_amd64.tar.gz"
      sha256 "96338db2faf8aa7bb12380845a7369ae0592764fa21592c8fdb94859e3791702"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
