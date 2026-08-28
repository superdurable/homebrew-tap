class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.15"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.15/dexcli_v0.1.15_darwin_arm64.tar.gz"
      sha256 "2581cb4de3b88cc13c919c7f033277198775cc80ab3d4a279d453407a1ae902a"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.15/dexcli_v0.1.15_darwin_amd64.tar.gz"
      sha256 "da875686572eb98d6800e8531f4f780e3635fedf2505a9529dc1e94958cca0e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.15/dexcli_v0.1.15_linux_arm64.tar.gz"
      sha256 "4e5679ee7a44dcf934d5faa45350a0a5fffd4265db45262331899ca6b198489f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.15/dexcli_v0.1.15_linux_amd64.tar.gz"
      sha256 "3965d7f663f0950d8ff16531244db3871b350922a4a7b8248c98cda7c64257e4"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
