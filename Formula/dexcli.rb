class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.10"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.10/dexcli_v0.1.10_darwin_arm64.tar.gz"
      sha256 "26c4aa6d229cf0d4756fe0cae7eb3ba0daf8aa9730f919319f969ac3e78cd3ac"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.10/dexcli_v0.1.10_darwin_amd64.tar.gz"
      sha256 "5ea7e37834e64ac530fc4c0d6fdf4b0dccfe70be596ab14042e49bc2cf7f4863"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.10/dexcli_v0.1.10_linux_arm64.tar.gz"
      sha256 "85c9fe1547a51072f7444198c1b017cd310db0620f0fabd80cfc4759e38609e0"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.10/dexcli_v0.1.10_linux_amd64.tar.gz"
      sha256 "0cc78ce46fb93ffa0b744246f8ae19afaad4cab0f64fe980b91535f3ae707c10"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
