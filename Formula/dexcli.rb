class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.11.3"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.3/dexcli_v0.11.3_darwin_arm64.tar.gz"
      sha256 "ec8485c9c7878436896f7e5e300e2460a8f744a686129fab1504d3d7ebfd8e12"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.3/dexcli_v0.11.3_darwin_amd64.tar.gz"
      sha256 "87b53a346e0d263e08ff4fd24173d2629c9e7c33d5c5c567f3355aba00bfe814"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.3/dexcli_v0.11.3_linux_arm64.tar.gz"
      sha256 "010ec9d19e6fec94b8a535e1dba0214a4af2c9a50fa60e7409837a87e226f2ea"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.3/dexcli_v0.11.3_linux_amd64.tar.gz"
      sha256 "91197aa7afb66468c1b8da8d662e3c321257664e0bd57dae11e4b78337509e34"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
