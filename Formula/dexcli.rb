class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.7.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.7.0/dexcli_v1.7.0_darwin_arm64.tar.gz"
      sha256 "cbbf9d347765a9ce98201c21a2e0afe53b7dbd0351b53c8cf9170d90f285c6a1"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.7.0/dexcli_v1.7.0_darwin_amd64.tar.gz"
      sha256 "6a5c100da24fca9186de0c2f7169136babdc549391612874bd2dbec95861cd05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.7.0/dexcli_v1.7.0_linux_arm64.tar.gz"
      sha256 "88ad7bef913becae0af4b9651c8d446e60c371224464823f7f2994ba700282d5"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.7.0/dexcli_v1.7.0_linux_amd64.tar.gz"
      sha256 "917afb2b14c00e4bd8c27715bf84acf934fa3da5d5f064a9dc2db7a7602d1430"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
