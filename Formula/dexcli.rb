class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.4.2"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.4.2/dexcli_v1.4.2_darwin_arm64.tar.gz"
      sha256 "a8e2413d7b94de00a0bc93237011211bf65ea4025a8c1f10fb608a779ebad835"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.4.2/dexcli_v1.4.2_darwin_amd64.tar.gz"
      sha256 "cccfd25cdbf2a805f648a82e2327b7030467e93f4e79a42a1f60b011e169a6f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.4.2/dexcli_v1.4.2_linux_arm64.tar.gz"
      sha256 "860a7f86168add373750cabca002af63d565e5beea13725859f5198fc8ee892f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.4.2/dexcli_v1.4.2_linux_amd64.tar.gz"
      sha256 "33bb327415e420b824b9c61d85ecc289522ab785eae4c05921e3e9224b79482e"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
