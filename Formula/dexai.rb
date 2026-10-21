class Dexai < Formula
  desc "Connect Codex or Claude Code on your computer to a Dex AI Project"
  homepage "https://github.com/superdurable/superverse"
  version "0.1.2"
  license :cannot_represent # Sustainable Use License 1.0 is not on the SPDX License List.

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/superdurable/superverse/releases/download/dexai-v0.1.2/dexai_v0.1.2_darwin_arm64.tar.gz"
    sha256 "e27ccdbe1f1f0e6737f9d2583dcd0d2cc5f661f7e1a9f82b842d2c7394564d6e"
  else
    url "https://github.com/superdurable/superverse/releases/download/dexai-v0.1.2/dexai_v0.1.2_darwin_amd64.tar.gz"
    sha256 "9aa8ee2c0803ea6491f60edd2ebd48c096b2aa142a9c1fe787ee294995716d44"
  end

  def install
    bin.install "dexai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexai version")
  end
end
