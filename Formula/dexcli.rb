class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.10.1"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.10.1/dexcli_v0.10.1_darwin_arm64.tar.gz"
      sha256 "5c63e94f3fad35546342609cb4c85768d8da7d3b16302737c112fb377c9836a5"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.10.1/dexcli_v0.10.1_darwin_amd64.tar.gz"
      sha256 "1fbf1aa4b5a0d8c3a7c55e2d9cb62a310077cd27ce92b888776a0e1f10314343"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.10.1/dexcli_v0.10.1_linux_arm64.tar.gz"
      sha256 "bf72411e15ca88b6a1d5908c2f0dc4b715682a3dc7d49914a7437e9a9b0b9218"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.10.1/dexcli_v0.10.1_linux_amd64.tar.gz"
      sha256 "9487f19f361cfb9da1119a9be3d77f3ef3f0925294eb5326e369c35183751eff"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
