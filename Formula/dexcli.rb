class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.8/dexcli_v1.47.8_darwin_arm64.tar.gz"
      sha256 "782f58384a9a83e20efe7e96b5b39885fa4b8aa890e14f4aacda16939ab08afc"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.8/dexcli_v1.47.8_darwin_amd64.tar.gz"
      sha256 "bd59aac63905ebc9becbda5c40c0b664245b0eb373540b89a33c9676f58b9a64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.8/dexcli_v1.47.8_linux_arm64.tar.gz"
      sha256 "52e5ab2f2a85647150da85786480c09e88f95b148ae6da85ae9441c40b19ccde"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.8/dexcli_v1.47.8_linux_amd64.tar.gz"
      sha256 "339b73b0d8aa18c2d192ef80ff2358aea6176c3a558b1e3881f37d59566fdc4a"
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
