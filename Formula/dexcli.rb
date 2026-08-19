class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.11"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.11/dexcli_v0.1.11_darwin_arm64.tar.gz"
      sha256 "05c1188b78e0a571475b15aa9539e3df365d6233131f1ee5299e6f5bf27aef35"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.11/dexcli_v0.1.11_darwin_amd64.tar.gz"
      sha256 "a9e0fbae7b6cb728c3071fc58f345e69c3ab7f2bb40f985db8f34e68f689153f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.11/dexcli_v0.1.11_linux_arm64.tar.gz"
      sha256 "56aad567046db1d45f91a48ffec5c2de59b71db06d3a2d30d1a713ce00a05114"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.11/dexcli_v0.1.11_linux_amd64.tar.gz"
      sha256 "de72b720dea17fdb27c47e617643554da7a87988e1adb6171bc8463b0d3b1b87"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
