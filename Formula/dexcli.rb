class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.12.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.12.0/dexcli_v0.12.0_darwin_arm64.tar.gz"
      sha256 "d7e8298b08306a105e17488abd03b9be077f49a94654564be84d1daebf5edfe2"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.12.0/dexcli_v0.12.0_darwin_amd64.tar.gz"
      sha256 "94cd93d30dac35ab545032ef3cfd6e0031001b2e5ddaea49e54004871d1526f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.12.0/dexcli_v0.12.0_linux_arm64.tar.gz"
      sha256 "74f9e5d1380093388d2201817be06a1b83cc21703d9d6e047e4efd75335eca64"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.12.0/dexcli_v0.12.0_linux_amd64.tar.gz"
      sha256 "d3193b989d425be10af5ee982142097cc26b80fd8e5d4a502e771e4ff04beffa"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
