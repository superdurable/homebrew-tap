class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.32.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.32.0/dexcli_v1.32.0_darwin_arm64.tar.gz"
      sha256 "fd9cc07fe06391336292aa5d95cf3540668af4540660dfce63bdca39f39410e9"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.32.0/dexcli_v1.32.0_darwin_amd64.tar.gz"
      sha256 "cfe2e3e7ff2ba2ad0b96771ea2ff5cbcee862d9324503f2dca2d6379db59b84c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.32.0/dexcli_v1.32.0_linux_arm64.tar.gz"
      sha256 "a565048a9290c1c0ccbe54dfed79b82aed42c2ddb0bfc343b9006bea3a435b3c"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.32.0/dexcli_v1.32.0_linux_amd64.tar.gz"
      sha256 "2f044723aa143257ba1330ec8456990a8e8a0d96c006946a1be78130cee27214"
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
