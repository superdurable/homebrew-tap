class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.28.0/dexcli_v1.28.0_darwin_arm64.tar.gz"
      sha256 "79516d1bf85a4d9e6ff91025c78fccc23f57221d3ca00e316c5431c9b639341a"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.28.0/dexcli_v1.28.0_darwin_amd64.tar.gz"
      sha256 "66e7231e969ee9b3fd4cf2bd1c4072df7e0a994c321e6cfe0c3e6118b8be2c18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.28.0/dexcli_v1.28.0_linux_arm64.tar.gz"
      sha256 "509ef2145acb4a41817359a1dd2235227e23d5ddc0d5f7bf5641394bf2dc4947"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.28.0/dexcli_v1.28.0_linux_amd64.tar.gz"
      sha256 "f2fe99439240ef7fb22f42c4b3361ab2d6fcf7c0692a0a46a152147cbb003750"
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
