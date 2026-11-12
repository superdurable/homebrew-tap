class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.46.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.46.1/dexcli_v1.46.1_darwin_arm64.tar.gz"
      sha256 "9d5f6d982694786d953cb91afb2b49f89372fa5b9e02c8340ba895b7dfd8a1fb"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.46.1/dexcli_v1.46.1_darwin_amd64.tar.gz"
      sha256 "1e412b8a47f2d230dbfc959b538db38b0e3b72646de26531d274218b060e0528"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.46.1/dexcli_v1.46.1_linux_arm64.tar.gz"
      sha256 "3787aeeecfedde324a272af938ce8de98baf504fa70e18f99cdd12c27294fc1b"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.46.1/dexcli_v1.46.1_linux_amd64.tar.gz"
      sha256 "eb57f2b94451dd71a4cf2da32a30a02c2d4cfed490f06d2006478aaeab5e5d06"
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
