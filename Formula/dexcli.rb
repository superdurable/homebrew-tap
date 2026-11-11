class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.44.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.44.0/dexcli_v1.44.0_darwin_arm64.tar.gz"
      sha256 "d775800c78ca8b9159d5b8a4b52ac5542fd463576bf14cff5c7deb87d6e9b005"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.44.0/dexcli_v1.44.0_darwin_amd64.tar.gz"
      sha256 "c5c66085b628b5645d46b8df87c20beee9f1f39ea48c3c83f156d24e1f5715d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.44.0/dexcli_v1.44.0_linux_arm64.tar.gz"
      sha256 "9ed2d8e9b7c8630fdccb03b25e24cf3493fe68e3d6db9687aff8aa03ae4f919d"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.44.0/dexcli_v1.44.0_linux_amd64.tar.gz"
      sha256 "6f3d1f20ad2ab6a0cf90c293ca58c59224925faf11e0b05d99b75f286199c04c"
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
