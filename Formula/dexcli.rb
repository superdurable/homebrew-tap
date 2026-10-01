class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.4.1"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.4.1/dexcli_v1.4.1_darwin_arm64.tar.gz"
      sha256 "734d8cb048959714273335d39227bbce25812fdc34a17689f9738a288f5f4904"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.4.1/dexcli_v1.4.1_darwin_amd64.tar.gz"
      sha256 "f66c1b3734d299e02094ce625b843790c65c7ca40bbd3205c9b7646418157d5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.4.1/dexcli_v1.4.1_linux_arm64.tar.gz"
      sha256 "95df16befb5a23c34d24a782fa287d7588f92dd538ca5e37db3d803b77330f84"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.4.1/dexcli_v1.4.1_linux_amd64.tar.gz"
      sha256 "53507b4988094f087b89e921574715890f682779e96ed7d75fe3bfe1f08c9705"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
