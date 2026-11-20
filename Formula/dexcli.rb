class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.20/dexcli_v1.47.20_darwin_arm64.tar.gz"
      sha256 "8dd03b6cb34b78f635e35f33c89d31f0edaf340e284b0e5e3c548cffc01119fa"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.20/dexcli_v1.47.20_darwin_amd64.tar.gz"
      sha256 "190a92854119ef3abc2895e579bb51227e154a883bf9720dfbde4c0e963dfdf3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.20/dexcli_v1.47.20_linux_arm64.tar.gz"
      sha256 "d8185777f09fa552844f9869ae4690e7b7ed53c17f13fc99157544617d226588"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.20/dexcli_v1.47.20_linux_amd64.tar.gz"
      sha256 "df0434668edaa379e36640d22808b6728520cc12e834e997643945555f562bf6"
    end
  end

  def install
    bin.install "dexcli", "dex-server-zd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
    assert_match "dex-server-zd", shell_output("#{bin}/dex-server-zd --version")
  end
end
