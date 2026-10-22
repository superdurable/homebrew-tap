class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.14.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.14.0/dexcli_v1.14.0_darwin_arm64.tar.gz"
      sha256 "2b10f4570580d9972a1c99b9c567b937d7a96852dced39af59d9ef87a13650d9"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.14.0/dexcli_v1.14.0_darwin_amd64.tar.gz"
      sha256 "5f08201509c0bae24bf68017cfb21388b28281e0a85111070f7bd8bdaf094eb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.14.0/dexcli_v1.14.0_linux_arm64.tar.gz"
      sha256 "3e4a7f5adf6cb1b790a1b3342fc3dbf9f567621a4c194eb4c397d96613cf830c"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.14.0/dexcli_v1.14.0_linux_amd64.tar.gz"
      sha256 "59bf0fd7aef3439691f0788cdd5b6268d5760afcec5dbec0da13e2bdb52f072d"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
