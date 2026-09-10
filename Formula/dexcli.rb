class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.3.1"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.3.1/dexcli_v0.3.1_darwin_arm64.tar.gz"
      sha256 "a7bdb76829b4019ccbd8b3344918baec4efd3cac283285417def40dd217f9e52"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.3.1/dexcli_v0.3.1_darwin_amd64.tar.gz"
      sha256 "bacd1266638c66febafb07e7a286885818de666c80dbee7c818bcf367a54205f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.3.1/dexcli_v0.3.1_linux_arm64.tar.gz"
      sha256 "73e630c681dad71f5890e15c64d51531f2b9976ba5d1090f3eeee30f1777561d"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.3.1/dexcli_v0.3.1_linux_amd64.tar.gz"
      sha256 "b7c235e3f33ecc11a469ddebd665238c6d684e04c035239f2b71e9f41a70b560"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
