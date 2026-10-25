class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.18.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.18.0/dexcli_v1.18.0_darwin_arm64.tar.gz"
      sha256 "0ff5605f7b0e0cee6778dfeaf8d2de713cd27b6e421370f23ac538458f40b5e1"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.18.0/dexcli_v1.18.0_darwin_amd64.tar.gz"
      sha256 "42739121e2686b5251194013a622bd105ba590ff3f9fccde7355349df473913f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.18.0/dexcli_v1.18.0_linux_arm64.tar.gz"
      sha256 "898fd2ff98267664cfddeb034643eb6173f85aafebac284c6352169ef4db790c"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.18.0/dexcli_v1.18.0_linux_amd64.tar.gz"
      sha256 "8cc89a333d6d4a691e46f8855d7b9eb174bab196cdbf63e20a3ce96f9294f4f7"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
