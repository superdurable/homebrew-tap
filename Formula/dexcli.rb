class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.16"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.16/dexcli_v0.1.16_darwin_arm64.tar.gz"
      sha256 "32aae25f8e154f472bfd54b6fdaa96a7cd88e5fc7bdc7fcfc29a3c80c4e179ce"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.16/dexcli_v0.1.16_darwin_amd64.tar.gz"
      sha256 "440e62ecab9b83574e65c8123eccedcb1388ffc75ebdf2c073b6cb9e0d2f99f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.16/dexcli_v0.1.16_linux_arm64.tar.gz"
      sha256 "67d19baea90c174f9db0c37b6c7707af1f62d3b6f0867b01dfc139bdbb2bd075"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.16/dexcli_v0.1.16_linux_amd64.tar.gz"
      sha256 "e8a19ab637321b87c637f8c8fc1771e1304b21ccda79410de3e771f8dc269880"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
