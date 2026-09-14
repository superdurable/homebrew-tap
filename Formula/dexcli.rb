class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.7.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.7.0/dexcli_v0.7.0_darwin_arm64.tar.gz"
      sha256 "72ecd690559c94e97346bd9aacc1ab922104a90a3b57c7a045dd31b437ce2a3f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.7.0/dexcli_v0.7.0_darwin_amd64.tar.gz"
      sha256 "4631236fb3c491b80848534c0bd9ae804d7c2222196fb447dabe2de3759bb66a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.7.0/dexcli_v0.7.0_linux_arm64.tar.gz"
      sha256 "cd08d799bf3bc394232823152c2ff7dd8580d438166525f48f1de2bc1ad2bad1"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.7.0/dexcli_v0.7.0_linux_amd64.tar.gz"
      sha256 "3f3d93c774528dfd5c8c052ebba50f9b21a9db7d9c5812a01c422234ebe4ebb7"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
