class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.6/dexcli_v1.47.6_darwin_arm64.tar.gz"
      sha256 "ddd3d32e3ba9db440027fe71ead47a3551caf76e76089e6f8c56d89a55d5251b"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.6/dexcli_v1.47.6_darwin_amd64.tar.gz"
      sha256 "f047a2dd5c8ed5874be35162a35a6205c417ff796bd8adff381727c76f8bd7e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.6/dexcli_v1.47.6_linux_arm64.tar.gz"
      sha256 "218eb8f053d5539f905f10f1178660458640de8fbfc898913c5e8b01ce87259d"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.6/dexcli_v1.47.6_linux_amd64.tar.gz"
      sha256 "211d60f541f84352b6fdeccde06d333f1f0bc7720dded368296abcd072f21426"
    end
  end

  def install
    bin.install "dexcli", "dex-server-zd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
    assert_match "dex-server-zd", shell_output("#{bin}/dex-server-zd --version")
  end
end
