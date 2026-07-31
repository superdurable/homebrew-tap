class Dexcli < Formula
  desc "Run Dex, Dex Web, and a local Temporal development server"
  homepage "https://github.com/superdurable/dex"
  version "0.1.1"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.1/dexcli_v0.1.1_darwin_arm64.tar.gz"
      sha256 "12cdfeed4efdc576b6dc6d40742fba53253f834e936a369b91a6aa82060055cc"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.1/dexcli_v0.1.1_darwin_amd64.tar.gz"
      sha256 "239ff0e6bd738681a5fb7a448136547adfcf496681ef6fe546cf7e7a4ad0d861"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.1/dexcli_v0.1.1_linux_arm64.tar.gz"
      sha256 "6d9319a550762c2c46724b05aeb78ea28e3f2270b9a33685bb6d78d0235c8c21"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.1/dexcli_v0.1.1_linux_amd64.tar.gz"
      sha256 "2e1e15ba19f37e66aef72de30d75369c2e1cf33d9ce8dacd62b2d892221aa298"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
