class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.30.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.30.0/dexcli_v1.30.0_darwin_arm64.tar.gz"
      sha256 "86ffb8bdc11d0c8fb191f482dcb3d1c6e8fec4f2487c89957feb0a3836dd2431"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.30.0/dexcli_v1.30.0_darwin_amd64.tar.gz"
      sha256 "a00b99f4343349dfe8bbac2896757df157f73f4a2c697449d5f0b40b59b1a6c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.30.0/dexcli_v1.30.0_linux_arm64.tar.gz"
      sha256 "acd565c123035370db21ccbe8e458494419a0e68a34d6b74b58c6034dc5cd8fc"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.30.0/dexcli_v1.30.0_linux_amd64.tar.gz"
      sha256 "ed20ceb7b75a85113391fcb86e21664f743b7ee872b9cbf576a471cfd21770b9"
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
