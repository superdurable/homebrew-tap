class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.29.0/dexcli_v1.29.0_darwin_arm64.tar.gz"
      sha256 "ca0bf7cd3820b2779cef795f6276043a5f16de57293386c3b9e5fefc64dcbab8"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.29.0/dexcli_v1.29.0_darwin_amd64.tar.gz"
      sha256 "ed6a17289865aefd87a6f14d7fcc8c260731fff9ba77a4b4a0f2aad0949ca502"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.29.0/dexcli_v1.29.0_linux_arm64.tar.gz"
      sha256 "00280bd71ee1ad594165eaa4cc22ffa99d664a68008951bb168a0d13af4d9980"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.29.0/dexcli_v1.29.0_linux_amd64.tar.gz"
      sha256 "5afc65861769492cd9bd88e19817afa7555db437ecbf8606ad34a77420222ab9"
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
