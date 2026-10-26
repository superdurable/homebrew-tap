class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.24.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.24.0/dexcli_v1.24.0_darwin_arm64.tar.gz"
      sha256 "109d9ac231eea34492b2cecb45e6e70d107022eeba6b134cc065fbf29e03bdca"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.24.0/dexcli_v1.24.0_darwin_amd64.tar.gz"
      sha256 "5cbde3526549e7b9b0a100894160da638c335d34678363f27f2e1b99bcb1bee0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.24.0/dexcli_v1.24.0_linux_arm64.tar.gz"
      sha256 "e814540f75ddd6eb2b8aca378a15b11224dd74763aff52da70a3e9d1a87de29a"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.24.0/dexcli_v1.24.0_linux_amd64.tar.gz"
      sha256 "49846b6373135d1fdaf48ec4c0cd375533ebe8fc05019bf0bd2b531a4251d608"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
