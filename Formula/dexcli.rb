class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.25.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.25.0/dexcli_v1.25.0_darwin_arm64.tar.gz"
      sha256 "50e439229c2845a3bb8105e6af4503081bcb0fab718edb3d0f7a6e31f495531d"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.25.0/dexcli_v1.25.0_darwin_amd64.tar.gz"
      sha256 "02287cdc829b41ba22ee6252d5e999c179247b54f685212dca8c1bb2c5625a0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.25.0/dexcli_v1.25.0_linux_arm64.tar.gz"
      sha256 "5049aea2fba19857ea6fb4b3001b8a78013394b184c39b46389c366d240a74f4"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.25.0/dexcli_v1.25.0_linux_amd64.tar.gz"
      sha256 "280f2b90ae97e1245519342f4de4df0e8505920cec8207635e48fa020c87efe8"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
