class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.16/dexcli_v1.47.16_darwin_arm64.tar.gz"
      sha256 "c2160f2f7e519aefd87507560ed5da13746b0452b2d4d1e09cb85e0962e22e2a"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.16/dexcli_v1.47.16_darwin_amd64.tar.gz"
      sha256 "a1322f3beb559034fc650c0c3f83d97a871cbbc718b18b951fa513163d749e82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.16/dexcli_v1.47.16_linux_arm64.tar.gz"
      sha256 "48e6e7b82ea02b4b0cb99f90a830d542ea1b670fada60804631e860bde5f4553"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.16/dexcli_v1.47.16_linux_amd64.tar.gz"
      sha256 "e77671d35b362245c0814634b7cc6022784ce946ce2bc00c7886621e76c9c398"
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
