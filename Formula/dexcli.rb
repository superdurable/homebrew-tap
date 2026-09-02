class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.19"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.19/dexcli_v0.1.19_darwin_arm64.tar.gz"
      sha256 "e3b4d303db9127a54c20de75c6b6c796ffbbda8964330de05157f41dc6eda206"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.19/dexcli_v0.1.19_darwin_amd64.tar.gz"
      sha256 "d6aa08e8a85cff7cf6fcf5542d5d5db898661ee9b3394371c03ec69c7f0ea69a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.19/dexcli_v0.1.19_linux_arm64.tar.gz"
      sha256 "6b6c6a7fe4c0fb7bbf56a17ab2d07b324471eb583adc046b73aaba959ecb37b4"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.19/dexcli_v0.1.19_linux_amd64.tar.gz"
      sha256 "29bc55f1146cc141308a8204e8ccda9ac31a56c12c07c7c0aff17fc9a80aed06"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
