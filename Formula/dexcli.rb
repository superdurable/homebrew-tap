class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.21"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.21/dexcli_v0.1.21_darwin_arm64.tar.gz"
      sha256 "8d5450184dbb7b10ff699a045bac0478e95214dad0caf1fdaa51cdf5af7d79c1"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.21/dexcli_v0.1.21_darwin_amd64.tar.gz"
      sha256 "c907c30862d00e8fc1df73f4eb4523a9e65ff6a4cef6feb8756ee5c89405a4a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.21/dexcli_v0.1.21_linux_arm64.tar.gz"
      sha256 "4ecafb61bdead256c69fcebc73890706aea95d0d257a4eaceb2de4f62968a637"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.21/dexcli_v0.1.21_linux_amd64.tar.gz"
      sha256 "1a2b554fc4ee459ad63dcd5806875022cb7fec193f62fb17ccb657306995a77f"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
