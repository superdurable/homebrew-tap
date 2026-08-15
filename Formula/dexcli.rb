class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.7"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.7/dexcli_v0.1.7_darwin_arm64.tar.gz"
      sha256 "2fd2bb83066d6760f3a9b2b87dc5c33acd69987d2aefb10dea565bda7d978966"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.7/dexcli_v0.1.7_darwin_amd64.tar.gz"
      sha256 "f3f2c55d92375bebba09084f9a8706f248dc49748916107141578e3ee6e81a69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.7/dexcli_v0.1.7_linux_arm64.tar.gz"
      sha256 "dcb433c67f9c7e3d5e34ccc5a2868262eee2fde54861c063b29e8a698eb3caa4"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.7/dexcli_v0.1.7_linux_amd64.tar.gz"
      sha256 "d6d29bf16392da6d63cd05b67f4fde8386d1e22563dc2e746cdb62d29c90cbd0"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
