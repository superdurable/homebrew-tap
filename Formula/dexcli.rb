class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.7/dexcli_v1.47.7_darwin_arm64.tar.gz"
      sha256 "e4242dca56b195f56d230babb89ae55ec2ee96445a4f0d339f3ecdc26164e7d4"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.7/dexcli_v1.47.7_darwin_amd64.tar.gz"
      sha256 "120704c8c682340ab955ef2d9c96344b9c24707c3ef68d3b0096d1433b4367cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.7/dexcli_v1.47.7_linux_arm64.tar.gz"
      sha256 "bdb8fae5487a2cea832d5d7f8e4e6ff174b5656c450ae03a0b94a8c7d1124396"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.7/dexcli_v1.47.7_linux_amd64.tar.gz"
      sha256 "30b1a9d6d6725d9f450c9c1d81e26136469ed28d146af6936d375c9eb57f965b"
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
