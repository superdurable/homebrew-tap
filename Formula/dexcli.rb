class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.0.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.0.0/dexcli_v1.0.0_darwin_arm64.tar.gz"
      sha256 "58f2d5f210c7276834a81097a07fc3d2b6a0383cb040a3af764b89bf52740c3a"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.0.0/dexcli_v1.0.0_darwin_amd64.tar.gz"
      sha256 "c6679b1d815b0dd77ec3ec386b5900af0f74fa5eb51b4408f01fd3e424b15927"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.0.0/dexcli_v1.0.0_linux_arm64.tar.gz"
      sha256 "8ee651c4f7a655a7d6bd666ef6621c73854ec6cea8cd5d555e107ac8a3b6696a"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.0.0/dexcli_v1.0.0_linux_amd64.tar.gz"
      sha256 "b471237f2c765a2198c6781e6b71a2fef6cd4a2b769eb78312afb4d182829b2e"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
