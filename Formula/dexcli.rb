class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.2/dexcli_v1.47.2_darwin_arm64.tar.gz"
      sha256 "30cd7e827be0d0eca69c2fd6e5cfdd791cb3ae3e3f59e74f3e1c2f34609f1350"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.2/dexcli_v1.47.2_darwin_amd64.tar.gz"
      sha256 "67d4f61779845b4b20cef4bb5772b5d493af93bf5eb56509005d109d1b23f5fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.2/dexcli_v1.47.2_linux_arm64.tar.gz"
      sha256 "35316d61b50192641906f6c804c4e8c359c0de846a79b0ec26e3ef418b91b2f5"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.2/dexcli_v1.47.2_linux_amd64.tar.gz"
      sha256 "9a9ecdc80652a1925d177b213b7f72ef4d8e8a878f14bb2526dd979481dbe3d3"
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
