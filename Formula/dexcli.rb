class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.46.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.46.0/dexcli_v1.46.0_darwin_arm64.tar.gz"
      sha256 "c03d4f3ac980e3edd4c57027c280248f64322fcc94f6d81df0ae6003bd65f0b1"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.46.0/dexcli_v1.46.0_darwin_amd64.tar.gz"
      sha256 "f6ec0a1c78da79320862f2268cda598a741b2d9bb400eb91b3b239e01a532354"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.46.0/dexcli_v1.46.0_linux_arm64.tar.gz"
      sha256 "247c28745ed2906d39f2c340dcae5cfbbe8c99fc2f00cad182421fc3ac791ace"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.46.0/dexcli_v1.46.0_linux_amd64.tar.gz"
      sha256 "42ed422c0952cc666500da151c181918a0d6c45fca9a8f61e8b5350cf49b7a87"
    end
  end

  def install
    bin.install "dexcli", "dex-server-zd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
    assert_match "dex-server-zd", shell_output("#{bin}/dex-server-zd --version")
  end
end
