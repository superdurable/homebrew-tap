class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.13.7"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.7/dexcli_v0.13.7_darwin_arm64.tar.gz"
      sha256 "5c328cf156597628e0f40b2471d8b745accb3c5ba54778e72d0116e31f5557c0"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.7/dexcli_v0.13.7_darwin_amd64.tar.gz"
      sha256 "ac5367ffffca4e29f028ceabf22c7459d52280ccbf0eba26ebce6cda61cecd2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.7/dexcli_v0.13.7_linux_arm64.tar.gz"
      sha256 "02eb7c0bed60c174e2231aa844e960fd513efbcfdc56d4cd7523c36dda375dd4"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.7/dexcli_v0.13.7_linux_amd64.tar.gz"
      sha256 "260a5d2c6a5ee838e307dde2fc713fbf4770c7d29e2f602fdb9dae8532a2d17c"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
