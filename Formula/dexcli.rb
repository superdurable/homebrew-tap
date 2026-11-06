class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.35.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.35.0/dexcli_v1.35.0_darwin_arm64.tar.gz"
      sha256 "1286c187eaa7ef0dffee9e0749c782bc4ca3b4ca7490d6cbc776528d7eb4fddf"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.35.0/dexcli_v1.35.0_darwin_amd64.tar.gz"
      sha256 "28cbef0dd7eec2b3c74a67590d96af0def2b38b803609a57532996ed8428aef0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.35.0/dexcli_v1.35.0_linux_arm64.tar.gz"
      sha256 "51d603cb9a10def8f6af53cc74dd324a46431d12bcbf49ecfe8a7f8e376bf189"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.35.0/dexcli_v1.35.0_linux_amd64.tar.gz"
      sha256 "87bf73fa1ea3e3a6732135773e243a17bd5bdbfe185570aad6a9e322b6f2425a"
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
