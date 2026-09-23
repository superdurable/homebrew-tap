class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.11.2"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.2/dexcli_v0.11.2_darwin_arm64.tar.gz"
      sha256 "6b22eae6069133b23e2ae0cd22a5d7302305ef3fbfc613c2c52953080f42e859"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.2/dexcli_v0.11.2_darwin_amd64.tar.gz"
      sha256 "e4ed297423044e5789ad1693bb5242e776ca9dd92b858fefd77ad92b317f84bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.2/dexcli_v0.11.2_linux_arm64.tar.gz"
      sha256 "a062c5a75a9e21b7ff33609a58d5e475199b42298e866fefee619c36f0982aef"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.11.2/dexcli_v0.11.2_linux_amd64.tar.gz"
      sha256 "b14b0717bee605599b3f216e0af5bf75af406987547b895896c36c081a4744e5"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
