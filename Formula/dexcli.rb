class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.15.1"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.15.1/dexcli_v1.15.1_darwin_arm64.tar.gz"
      sha256 "6c1b69eccba82c36811e002e7448fcd789edbc14db34590d8cc2342653a27394"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.15.1/dexcli_v1.15.1_darwin_amd64.tar.gz"
      sha256 "147af00d66aff4354d160cba694bded12af257d604f47f3bd8e8000b33ba65c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.15.1/dexcli_v1.15.1_linux_arm64.tar.gz"
      sha256 "62d3a93bf61a14a092d5519ff498580b6c092b6f434bddc514842fd23e5f0613"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.15.1/dexcli_v1.15.1_linux_amd64.tar.gz"
      sha256 "0259406a6187ae58136e80050689af9ccc8cba30dea682f817e78ad4656faefd"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
