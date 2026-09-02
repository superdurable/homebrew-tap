class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.18"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.18/dexcli_v0.1.18_darwin_arm64.tar.gz"
      sha256 "783185c72349ea8be1016b053f38731d6f179f80a4af04ebdcd745bff3eb6744"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.18/dexcli_v0.1.18_darwin_amd64.tar.gz"
      sha256 "7d08608686bd822cbf40339152fb1b18b49a59e927160918dacb9625cba091c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.18/dexcli_v0.1.18_linux_arm64.tar.gz"
      sha256 "4c357178661b747773d666abbbb380f541a48bf9c2228a11f0263475847689af"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.18/dexcli_v0.1.18_linux_amd64.tar.gz"
      sha256 "5db3f2bf6b3093929157cf4c6285a42df675dbb67d75eae424b72c2f1fff9556"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
