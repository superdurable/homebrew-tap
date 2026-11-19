class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.17/dexcli_v1.47.17_darwin_arm64.tar.gz"
      sha256 "2b93aee739e327dbbeba939d17b5a40cf6132cde70045684def12a51a9b35340"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.17/dexcli_v1.47.17_darwin_amd64.tar.gz"
      sha256 "70f6c52cbaac2ccf443a029ae4c97435a0455a66b0969b5f39e2a4548bfde893"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.17/dexcli_v1.47.17_linux_arm64.tar.gz"
      sha256 "1a5af48f4df14c652692f1deb71363f82e0e0dd2ce179c38a8aa83bcc65df51a"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.17/dexcli_v1.47.17_linux_amd64.tar.gz"
      sha256 "8ca41c8e61ba28b1c26f849f7670475c57772ff492ff70db386c64921c9a7178"
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
