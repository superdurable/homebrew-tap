class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.8"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.8/dexcli_v0.1.8_darwin_arm64.tar.gz"
      sha256 "fd7025ab8c5857339d723227533003b35ee08dcb5126c6e131802f35da712da2"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.8/dexcli_v0.1.8_darwin_amd64.tar.gz"
      sha256 "036c500e82e9ac9f9c543965b13f185ccb39d229f0e5b1b6ca2ef79db864a96a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.8/dexcli_v0.1.8_linux_arm64.tar.gz"
      sha256 "7ee6121f0ad22957ef7357d22da09df50b2cf22e2b703fe92996e3e29731e674"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.8/dexcli_v0.1.8_linux_amd64.tar.gz"
      sha256 "e4d0249f9c75e7b7edb46748f94aeef4b0c27c94e987cf4c4d35b22c28f8e804"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
