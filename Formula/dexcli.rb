class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.19.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.19.0/dexcli_v1.19.0_darwin_arm64.tar.gz"
      sha256 "2d24a0b1af29aee3567e303d074ba60dc647f86acf625555165c920aae3f7e99"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.19.0/dexcli_v1.19.0_darwin_amd64.tar.gz"
      sha256 "626e985414de20a57596ab69c23eab9f137bfd9f02cbb2c509c0999a50d9ba43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.19.0/dexcli_v1.19.0_linux_arm64.tar.gz"
      sha256 "cb868402799d241eb26ff1a95c14903670d8315722cc9a414c219e6689a4c7b0"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.19.0/dexcli_v1.19.0_linux_amd64.tar.gz"
      sha256 "3708b5c06688327a89b4cd99b67b4890190bffae1af9b6022498b8c2db9f5b65"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
