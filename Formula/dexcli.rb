class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.14.1"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.14.1/dexcli_v0.14.1_darwin_arm64.tar.gz"
      sha256 "3365f0adb221c301e641a8c60d56e8d93ad18dd2042b06b3bf2337e547f1fdb1"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.14.1/dexcli_v0.14.1_darwin_amd64.tar.gz"
      sha256 "3c28375c88a9ecff9ab9a5a446519e35c4941295b571526da9671a1d92d88f8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.14.1/dexcli_v0.14.1_linux_arm64.tar.gz"
      sha256 "9e25bd0a7e9e1b318f95ac9849a6a262db5c57df109880485ca28312ad6e7f3f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.14.1/dexcli_v0.14.1_linux_amd64.tar.gz"
      sha256 "8f97d5c1ddde41582ba182d225cf6fc2932974e1a11c6901748156dba203766f"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
