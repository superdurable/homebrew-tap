class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.14"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.14/dexcli_v0.1.14_darwin_arm64.tar.gz"
      sha256 "fe01b9c0d874a82f9d4bed4d2efc84d491a953830563cf727438eb2b1e35a966"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.14/dexcli_v0.1.14_darwin_amd64.tar.gz"
      sha256 "0dd74ed173c36bf5e4dc5615dd2c82fe7adf7618989ca9a87ffa5bc813a9efa5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.14/dexcli_v0.1.14_linux_arm64.tar.gz"
      sha256 "309b22d77b875adc40f4fcc91264e1e1281580436514bdf36d85523e6e1a259f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.14/dexcli_v0.1.14_linux_amd64.tar.gz"
      sha256 "942ad15e7db110de6e959e9fd8c9559b7b29fff38811df2f1cbf25356ad17652"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
