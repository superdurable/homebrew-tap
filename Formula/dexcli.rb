class Dexcli < Formula
  desc "Develop and operate Dex from the command-line"
  homepage "https://github.com/superdurable/dex"
  version "1.12.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.12.0/dexcli_v1.12.0_darwin_arm64.tar.gz"
      sha256 "a0cdd1567b1611bd1b50724b9355c3e918cf0ef9f29e472e8e045236b27d6780"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.12.0/dexcli_v1.12.0_darwin_amd64.tar.gz"
      sha256 "1333b78b14ea369ee83894e0fdb8aa433f70e5793e1bb1246f53907f2f485b92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.12.0/dexcli_v1.12.0_linux_arm64.tar.gz"
      sha256 "56fe0669d4181bb8c3437b1dbd54d5cad02e8e614b672214bb5e564d9230f63f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.12.0/dexcli_v1.12.0_linux_amd64.tar.gz"
      sha256 "5a49eb626d0c5dcda13716531d53abd5c8d8b635b2b42bb3b395856b62fdd76a"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
