class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.13.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.0/dexcli_v0.13.0_darwin_arm64.tar.gz"
      sha256 "f13e31e0257e396b7482becc56d23d05a6cfb762e394e5c6169280aca509daf4"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.0/dexcli_v0.13.0_darwin_amd64.tar.gz"
      sha256 "6a6e27905980fb28302cae6223dac93044450e8803d51ff38dec32279cbb2dc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.0/dexcli_v0.13.0_linux_arm64.tar.gz"
      sha256 "18a2b63833b7f63751f1ba20d81042cf298fbac1e842a3ed5b5b611640edb7b7"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.0/dexcli_v0.13.0_linux_amd64.tar.gz"
      sha256 "b7a9015de15869576cbbbf6ca3f6d160050e9d16ee2389841400e2a67ee2070b"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
