class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.38.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.38.0/dexcli_v1.38.0_darwin_arm64.tar.gz"
      sha256 "dfc546b3c5e6a5c11d39edb0e92f55e1ccb2263f7b98c98358098ab5be268574"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.38.0/dexcli_v1.38.0_darwin_amd64.tar.gz"
      sha256 "de91d77bdbc68d2b4074512e036a7a934105cb77e5e78849defb52c58d170b7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.38.0/dexcli_v1.38.0_linux_arm64.tar.gz"
      sha256 "f54846b72d976592fc66a50579799fcca24404bd42bf2df2091d5b41603c21bf"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.38.0/dexcli_v1.38.0_linux_amd64.tar.gz"
      sha256 "436d827defc6f8971e77b25f2b0de8f6045e1d1fecfc70ced85769cd23f1102d"
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
