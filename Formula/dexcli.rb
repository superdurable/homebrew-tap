class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.25.2"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.25.2/dexcli_v1.25.2_darwin_arm64.tar.gz"
      sha256 "68314be61b52d35a9ca5f88a503b5b64772ae14aa42aaa5cdb881f13053fb0b2"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.25.2/dexcli_v1.25.2_darwin_amd64.tar.gz"
      sha256 "6557d137774a6ced350a3614846a3e6077d458715e7e35f613e567e0bc0d89d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.25.2/dexcli_v1.25.2_linux_arm64.tar.gz"
      sha256 "26ed0eeb2e6462d94c8ac54abfa3c305b603a071ff98197048d65f5755842b6c"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.25.2/dexcli_v1.25.2_linux_amd64.tar.gz"
      sha256 "52bb5db55d7698821f54e10fa7e1c60dc43149c6446aa8267b643289e819fe6a"
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
