class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.5.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.5.0/dexcli_v0.5.0_darwin_arm64.tar.gz"
      sha256 "0dcfcd4a8cf1867bc83e0210e96771d40a90054c9e78dc229da62d7ad84d2fd5"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.5.0/dexcli_v0.5.0_darwin_amd64.tar.gz"
      sha256 "e450ee49aca5822a2de63c51c51488c11aeeca4d73acaa89479b2e550a7ab3cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.5.0/dexcli_v0.5.0_linux_arm64.tar.gz"
      sha256 "c867532e6fc5d77a35f893ae5cdcd283be991a13d0ccdf93de30dbaf711cf6e4"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.5.0/dexcli_v0.5.0_linux_amd64.tar.gz"
      sha256 "dcece521118010571c7d80295d33ac1ff48a729bea74ec0c4b1214b7b81f3c89"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
