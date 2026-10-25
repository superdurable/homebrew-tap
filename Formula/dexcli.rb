class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.23.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.23.0/dexcli_v1.23.0_darwin_arm64.tar.gz"
      sha256 "352fcd4778dbeeb50e4135aaae3ca8a23220560a5d5c1d947f87ee2d49b52469"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.23.0/dexcli_v1.23.0_darwin_amd64.tar.gz"
      sha256 "21659244a1eb7335698c99f254ef0ff23694cb7c177ab475991265706ba83bc5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.23.0/dexcli_v1.23.0_linux_arm64.tar.gz"
      sha256 "37ecbff522d79d3eb01e5c36654007e7896d9f168c2bbbd9b87f3d7fc162e9e1"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.23.0/dexcli_v1.23.0_linux_amd64.tar.gz"
      sha256 "e0d83c128a24ce88e1def05a242aa84cb3372cf61bc3e08671fe7374b012fa2a"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
