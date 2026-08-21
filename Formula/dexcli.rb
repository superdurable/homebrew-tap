class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.12"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.12/dexcli_v0.1.12_darwin_arm64.tar.gz"
      sha256 "36b26b087195793257385ed47c8bd4496d666902b8f54a533b461ef7802de748"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.12/dexcli_v0.1.12_darwin_amd64.tar.gz"
      sha256 "ca6974997f9d09c9db7eedfe5222d27c82bd4528e600cd853ac62e5c3cc0e7d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.12/dexcli_v0.1.12_linux_arm64.tar.gz"
      sha256 "892ed33ece747e438fcab06c8e41b0202b0429f340d6cd84f1b9881579f027a4"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.12/dexcli_v0.1.12_linux_amd64.tar.gz"
      sha256 "3fbd7bc25b5501cc7599155c72a72a827cbb693601a86674cf53ac63cab001e2"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
