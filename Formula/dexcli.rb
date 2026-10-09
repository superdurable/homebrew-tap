class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.6.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.0/dexcli_v1.6.0_darwin_arm64.tar.gz"
      sha256 "09f888be5742e080f9073aa87d963a3557bde29bcc53d72d7e340293f7be3ac3"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.0/dexcli_v1.6.0_darwin_amd64.tar.gz"
      sha256 "ff363905fd00a2be976481619fe43f1b8495ff345b015d883cd4ad1ac8be614e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.0/dexcli_v1.6.0_linux_arm64.tar.gz"
      sha256 "d8399592e3d095000e67317944e145239086bd6a7da54146f9d37e61b50003e9"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.0/dexcli_v1.6.0_linux_amd64.tar.gz"
      sha256 "7f35a6271db81ac7c097c56093df1d527fd5471d77a6ab589ea2fb496618fa0f"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
