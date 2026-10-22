class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.14.2"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.14.2/dexcli_v1.14.2_darwin_arm64.tar.gz"
      sha256 "40f3d5f8724380546ae5690b843d605e5d075037dd12eadd0f19bae838ae2f0c"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.14.2/dexcli_v1.14.2_darwin_amd64.tar.gz"
      sha256 "40f81562f499e926a20df2a7e2e4c1d1230b408bc4982ede25e9b2ab143aa5c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.14.2/dexcli_v1.14.2_linux_arm64.tar.gz"
      sha256 "39b0588346025ba0818f2c450ff3bb162aec0ae01f46fc78d44f5b2ffd1db611"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.14.2/dexcli_v1.14.2_linux_amd64.tar.gz"
      sha256 "380052570e021339e32dd50f20a3c92ea94fccf0ad2f611745f9e304b53ae409"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
