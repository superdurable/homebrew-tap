class Dexai < Formula
  desc "Connect Codex or Claude Code on your computer to a Dex AI Project"
  homepage "https://github.com/superdurable/superverse"
  version "0.1.1"
  license :cannot_represent # Sustainable Use License 1.0 is not on the SPDX License List.

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/superdurable/superverse/releases/download/dexai-v0.1.1/dexai_v0.1.1_darwin_arm64.tar.gz"
    sha256 "cffcf53132018634865201b3f82b91fc43c78693c47cbcd6638c3f3440f1ce52"
  else
    url "https://github.com/superdurable/superverse/releases/download/dexai-v0.1.1/dexai_v0.1.1_darwin_amd64.tar.gz"
    sha256 "fbe47bcaa26219a2abb395d3447746a6d7ab99945e7f2fc6d372fadbb5446675"
  end

  def install
    bin.install "dexai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexai version")
  end
end
