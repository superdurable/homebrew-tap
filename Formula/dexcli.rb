class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.13.1"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.1/dexcli_v0.13.1_darwin_arm64.tar.gz"
      sha256 "ccd9f34cdcc9c7d2af4d769715a0ba96e6d249677f75685b14e9f88110f9a923"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.1/dexcli_v0.13.1_darwin_amd64.tar.gz"
      sha256 "1e838987934bbebcef79ce68771000f408ab9af9f3aaf6fefa7cc3275d5b5d40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.1/dexcli_v0.13.1_linux_arm64.tar.gz"
      sha256 "f31bf099c5daaeffd7b1e1a33447442f25c1512fa458a1d6e19eca63c1c35c35"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.1/dexcli_v0.13.1_linux_amd64.tar.gz"
      sha256 "c8381308df1b979ed34db308bb46043ce76df1cd7b7d6a4146d2f762e2446f38"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
