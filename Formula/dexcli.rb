class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.8.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.8.0/dexcli_v0.8.0_darwin_arm64.tar.gz"
      sha256 "afa61346c6d7d0aa3b2ce16077cad4840db06f33ae6a42a947e44a3afee9203f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.8.0/dexcli_v0.8.0_darwin_amd64.tar.gz"
      sha256 "56a690eba38fb7cfb626113c6149326104cd7952cfbd0cc061c1d0832302c148"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.8.0/dexcli_v0.8.0_linux_arm64.tar.gz"
      sha256 "64da8b6ff743323e0916306bb8e49123c1cb0be3bfa0af86a674f750f910dc30"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.8.0/dexcli_v0.8.0_linux_amd64.tar.gz"
      sha256 "71541bb0686364a8b542660e9925add808891ce778a8fe7c2f0d6d5d12f735dd"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
