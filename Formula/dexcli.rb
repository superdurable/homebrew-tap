class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.3.1"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-0.3.1/dexcli_0.3.1_darwin_arm64.tar.gz"
      sha256 "d07aada6e88f9ac5a3b83013edfb5f2b571c529e8d9a38fc5cb5fa0ae0c18f4e"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-0.3.1/dexcli_0.3.1_darwin_amd64.tar.gz"
      sha256 "2d2081ac9c6922f2d24f93b9f63adb44e9507ee37379cda960b1e54c695a36b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-0.3.1/dexcli_0.3.1_linux_arm64.tar.gz"
      sha256 "2dfbf1e744910f4b01997f7719d8d0b729cc9a2cdb3848db64573d72cdcf3d02"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-0.3.1/dexcli_0.3.1_linux_amd64.tar.gz"
      sha256 "d4918ca75c65e89594d45be5d08615f53b1e612d7827a9a14b9046b9e911c0f1"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
