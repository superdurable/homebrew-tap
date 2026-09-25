class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.12.1"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.12.1/dexcli_v0.12.1_darwin_arm64.tar.gz"
      sha256 "158d5af3b89b0b6d5cba859e63440f81b57d18ca0396dfc3f03663abef63ec4b"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.12.1/dexcli_v0.12.1_darwin_amd64.tar.gz"
      sha256 "6c07a261cb187cd334acaf481b50845bf29635aac6fe7c396f42192c4821759d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.12.1/dexcli_v0.12.1_linux_arm64.tar.gz"
      sha256 "63285e3f23448e46b1cc9427fa72d6f1a1b7f05abada8bd63295dd23548d754d"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.12.1/dexcli_v0.12.1_linux_amd64.tar.gz"
      sha256 "b0c7f93de0a8b15a0a81243de089b8a3428a8633ae98d412667423e26712df42"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
