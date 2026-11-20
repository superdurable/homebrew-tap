class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.18/dexcli_v1.47.18_darwin_arm64.tar.gz"
      sha256 "ab762b29a518a6600b05ff27063dc42c140c0746889e22b78c594538f6239edd"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.18/dexcli_v1.47.18_darwin_amd64.tar.gz"
      sha256 "bd8e26f744aa56f5195f14f85f5d32e2fcb0693f99f88df89eb4d1e74d385625"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.18/dexcli_v1.47.18_linux_arm64.tar.gz"
      sha256 "207ebe7e9b95086311c633b311fc4cea80b9a03b02043d1ea956551af48a6b77"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.18/dexcli_v1.47.18_linux_amd64.tar.gz"
      sha256 "a64a9a85f6887c146d85e74c40736304ec3371f72e6eba42323ca04a2722c5c8"
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
