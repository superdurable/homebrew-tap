class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.1.2"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.1.2/dexcli_v1.1.2_darwin_arm64.tar.gz"
      sha256 "ce509f393eb3decc25fcdd68ac871aa5f4fc737c8516060cdcb57e5004614e4d"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.1.2/dexcli_v1.1.2_darwin_amd64.tar.gz"
      sha256 "e9efb46cb3e3421544c587d7cd7d7acf03828d81d1afbb7caa6c3b2cca57acbd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.1.2/dexcli_v1.1.2_linux_arm64.tar.gz"
      sha256 "98727d5dfad861cbb83788e976ddc9fdaa328ef6b9642caf32896d4674c9d78f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.1.2/dexcli_v1.1.2_linux_amd64.tar.gz"
      sha256 "532da5ccae59a54b817f03445326a60e175d5f60a613ca1f6dfbb7696031e956"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
