class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.10.1"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.10.1/dexcli_v1.10.1_darwin_arm64.tar.gz"
      sha256 "a425b5fd11a378c74c62bd18c14fed67ff002ddcdd02399f48454fe2970e39bc"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.10.1/dexcli_v1.10.1_darwin_amd64.tar.gz"
      sha256 "15913d983b6b6f972b08523449406445ab74bc66c91a12efe438ee65a66e868f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.10.1/dexcli_v1.10.1_linux_arm64.tar.gz"
      sha256 "996a4ac0f1dc9229de18e2535d74372fa131928ad6831294606b12dd81028347"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.10.1/dexcli_v1.10.1_linux_amd64.tar.gz"
      sha256 "8299979482b73315829eafead4c99bc18dacb9a305153c3763bd0f412aad6558"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
