class Dexai < Formula
  desc "Connect Codex or Claude Code on your computer to a Dex AI Project"
  homepage "https://github.com/superdurable/superverse"
  version "0.1.0"
  license :cannot_represent # Sustainable Use License 1.0 is not on the SPDX License List.

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/superdurable/superverse/releases/download/dexai-v0.1.0/dexai_v0.1.0_darwin_arm64.tar.gz"
    sha256 "971740c7cd4566e354d7f6e3e1d85cd70b1a7ea58e4901727d32a8e7f766f249"
  else
    url "https://github.com/superdurable/superverse/releases/download/dexai-v0.1.0/dexai_v0.1.0_darwin_amd64.tar.gz"
    sha256 "52dc965e70f7729c338d79b332b34dfc742bcc05e07c878d26ae931e95f961b5"
  end

  def install
    bin.install "dexai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexai version")
  end
end
