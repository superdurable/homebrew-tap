class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.4.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.4.0/dexcli_v1.4.0_darwin_arm64.tar.gz"
      sha256 "19856e9844341a0442f1cd6f4f30f459ee03365cbd6ec845f9361cc16d1ca652"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.4.0/dexcli_v1.4.0_darwin_amd64.tar.gz"
      sha256 "4c89659798b9ae4c51bb579779c51a00917219fb6adbb09ddaac296521a04cd2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.4.0/dexcli_v1.4.0_linux_arm64.tar.gz"
      sha256 "704f4607e7e1f3de922ff9c4a23eb777a4124eea2650a0710c584735f0eb4079"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.4.0/dexcli_v1.4.0_linux_amd64.tar.gz"
      sha256 "ed89a71423b24a1808077ec278692701aee01ccb3b65b17ed3b459d9deccf05a"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
