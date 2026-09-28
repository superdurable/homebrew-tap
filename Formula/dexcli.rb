class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.13.10"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.10/dexcli_v0.13.10_darwin_arm64.tar.gz"
      sha256 "976cf546b8c18895be3934408a72e358d2c4e4a1e8739fefe6b759de04159116"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.10/dexcli_v0.13.10_darwin_amd64.tar.gz"
      sha256 "b2454c74476f8c2f1c85c73930193d61dfb9b750886c8344176d5a0a1fe72ab4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.10/dexcli_v0.13.10_linux_arm64.tar.gz"
      sha256 "d7e6c21396ec3ddfef2205d8be81bf08338343ce22451cc71d1962c778d2496d"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.10/dexcli_v0.13.10_linux_amd64.tar.gz"
      sha256 "432b222ce58c8cad93b290daee160454ec441b381c3a4aeca0f94c90687df6b8"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
