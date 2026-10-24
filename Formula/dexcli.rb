class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.16.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.16.0/dexcli_v1.16.0_darwin_arm64.tar.gz"
      sha256 "d38136ae4f5f137b0ba03873fbc4df5a1367068180443d9017b66b7806016736"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.16.0/dexcli_v1.16.0_darwin_amd64.tar.gz"
      sha256 "7c2b617a14269ed7d332e928605a3ed5b344cb47a1cc7080cc261655f382a9cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.16.0/dexcli_v1.16.0_linux_arm64.tar.gz"
      sha256 "e32b2209c11f4262c14a19044241825f1c63276aef79e8962e7e22d2424631ce"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.16.0/dexcli_v1.16.0_linux_amd64.tar.gz"
      sha256 "f249d798f79f8028a11994b0238bb872e63f1f9936b71e06811779d27460e4e0"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
