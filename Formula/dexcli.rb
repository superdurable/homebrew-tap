class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.17"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.17/dexcli_v0.1.17_darwin_arm64.tar.gz"
      sha256 "59d3d53ce0d53f2eba253a3663f2ca2a0235092ec7359e0dd23e9d83b9989d18"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.17/dexcli_v0.1.17_darwin_amd64.tar.gz"
      sha256 "2d54a8ba3e326cfc1280cfb38c76e1ab06a8059e19baa6e9b54dca3944b5cefa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.17/dexcli_v0.1.17_linux_arm64.tar.gz"
      sha256 "3a66436e0605b6e4a9206f742cf162a324a81431c74c358572419a2c2d3479cd"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.17/dexcli_v0.1.17_linux_amd64.tar.gz"
      sha256 "38ce343fff24efb1ef242ae9d1c04ba16781c2f4df663ddc40248035fd8bdcdb"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
