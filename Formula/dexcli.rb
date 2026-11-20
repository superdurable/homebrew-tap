class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.19/dexcli_v1.47.19_darwin_arm64.tar.gz"
      sha256 "4de154835dc51c273bba2f216cd7ece5b13a3406b90e04e71dda64e8fde69ad7"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.19/dexcli_v1.47.19_darwin_amd64.tar.gz"
      sha256 "7886914a9267f1e1fed312d020f285617c743cd6c8f5485c696b4cb6ab8f759f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.19/dexcli_v1.47.19_linux_arm64.tar.gz"
      sha256 "495b3d9ee8f7dd1b6f22be747c93840f011f99c4d8f3c516ec8f5409aa2b1b9e"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.19/dexcli_v1.47.19_linux_amd64.tar.gz"
      sha256 "d1ab42a9057137d9c9fbfc2cf3975b02f8b03d313c6aa33ae37fae43021d48d8"
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
