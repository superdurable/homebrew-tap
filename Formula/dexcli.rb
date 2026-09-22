class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.11.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.0/dexcli_v0.11.0_darwin_arm64.tar.gz"
      sha256 "4eaa3d02a1ef44600e2956e0c3572f39fab9c06d12349e4ca27e2904328f4bbe"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.0/dexcli_v0.11.0_darwin_amd64.tar.gz"
      sha256 "acb32194d47987b85236e7bb285d2012a672889fd517548c06d43bf40c47c349"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.0/dexcli_v0.11.0_linux_arm64.tar.gz"
      sha256 "c30316874abd8249790ee365669a82f9f2c96db3820585f5d4eabdae2e4e665d"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.0/dexcli_v0.11.0_linux_amd64.tar.gz"
      sha256 "c2d8af0b18755d5b184efc9428f2ca15ae9b6b8a2ba047c6986689f976fe5f24"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
