class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.13.6"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.6/dexcli_v0.13.6_darwin_arm64.tar.gz"
      sha256 "ff9b087e216ab70c4e1ae36d534da4e40117aa989437d016991d4d6d25ce7983"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.6/dexcli_v0.13.6_darwin_amd64.tar.gz"
      sha256 "4253728db5aca1deb2e82eb6a97a7324a0a4a8c56b0390f1ddba4155652d04b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.6/dexcli_v0.13.6_linux_arm64.tar.gz"
      sha256 "971fe1296f84321af45f7ff60b04f6c7a38034070a40654be31f3daf237596de"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.6/dexcli_v0.13.6_linux_amd64.tar.gz"
      sha256 "876b7a493a78c7c27f92390d4c22da0cb8dcd6b89fbae40cd9b14a95dfb2c2db"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
