class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.4.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.4.0/dexcli_v0.4.0_darwin_arm64.tar.gz"
      sha256 "cf6202f30dc6d85bd1109383b0cbc5083faf8b7ac03b28dd8d134fd698450e73"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.4.0/dexcli_v0.4.0_darwin_amd64.tar.gz"
      sha256 "9aaa83bec16c2512193116ac0d6d5d887f16c1c8c19ae169b9457e910c3ac54b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.4.0/dexcli_v0.4.0_linux_arm64.tar.gz"
      sha256 "62655f6b34c1b829343b59d2fce152a37cc15e2506c21eea8d06f457c98fb359"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.4.0/dexcli_v0.4.0_linux_amd64.tar.gz"
      sha256 "c5f2db8786b4a75d77dceed4513f0b3a48c43f0993e8d2e2060c0754571e5d5d"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
