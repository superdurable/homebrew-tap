class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.13.2"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.2/dexcli_v0.13.2_darwin_arm64.tar.gz"
      sha256 "c7252e808975cd16646eeb56c89947fb8a33bd7e6a90faaaeff18ab72e0bfe3f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.2/dexcli_v0.13.2_darwin_amd64.tar.gz"
      sha256 "9d7c9367295506d90bc82de7682fc40e5b0293fe041f3c7417212efee523ac51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.2/dexcli_v0.13.2_linux_arm64.tar.gz"
      sha256 "b4dcb7fa8663de414ff4e8ab362fd54d9fc5b2c24ce946214c5b58ed14948e36"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.2/dexcli_v0.13.2_linux_amd64.tar.gz"
      sha256 "438f7286c84bff8aec728b2ed41d895c87344c13fb5ffc229733bddbfca8fddb"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
