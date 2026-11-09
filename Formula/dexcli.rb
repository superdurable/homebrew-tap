class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.40.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.40.2/dexcli_v1.40.2_darwin_arm64.tar.gz"
      sha256 "62bca5e61f7b8017e3ba5ccd6209250e6a2b8cf87f0f74ec7f4e9a842c592762"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.40.2/dexcli_v1.40.2_darwin_amd64.tar.gz"
      sha256 "86a433d863d14364d96fb14f0ca1b9d3d1e2fc3e5dd78c73bfa5efb8049787e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.40.2/dexcli_v1.40.2_linux_arm64.tar.gz"
      sha256 "21b4bf4f6666be162d17624253eeadc1e5fe9cbd06629be59c1871d3aa2344ad"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.40.2/dexcli_v1.40.2_linux_amd64.tar.gz"
      sha256 "953378c8c11ad5af734c583b2ef6dfe72ade460fb735f1654d25f8775d473b25"
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
