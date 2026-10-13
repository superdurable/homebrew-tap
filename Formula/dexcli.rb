class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.8.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.8.0/dexcli_v1.8.0_darwin_arm64.tar.gz"
      sha256 "472fb92c644656c1ea6857c5029ed38d452a5a1ec624c4dbbfcb2672f1198341"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.8.0/dexcli_v1.8.0_darwin_amd64.tar.gz"
      sha256 "414707b54a9d7f58e2613dbc18f89e730d3d4878277b0b0020f41f1022902908"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.8.0/dexcli_v1.8.0_linux_arm64.tar.gz"
      sha256 "d8604c72e89276872f710f545457ab4ccc77a2db69534993a601ea7477d23955"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.8.0/dexcli_v1.8.0_linux_amd64.tar.gz"
      sha256 "5891cf3afe3eb166533d4b0d9908b8b5d812347de3897e9b37259a5139b42e30"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
