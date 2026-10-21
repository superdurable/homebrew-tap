class DexaiConnect < Formula
  desc "Connect a local coding agent to a Superverse Project"
  homepage "https://github.com/superdurable/superverse"
  version "0.1.0"
  license :cannot_represent # Sustainable Use License 1.0 is not on the SPDX License List.

  deprecate! date: "2026-10-21", because: "is replaced by dexai (brew install superdurable/tap/dexai)"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/superverse/releases/download/dexai-connect-v0.1.0/dexai-connect_v0.1.0_darwin_arm64.tar.gz"
      sha256 "e7700248e3eb09b57711718c6d05c6a9776afa359812463b6c0d44c05e468352"
    else
      url "https://github.com/superdurable/superverse/releases/download/dexai-connect-v0.1.0/dexai-connect_v0.1.0_darwin_amd64.tar.gz"
      sha256 "ff66fc9bd32a7b146986f2857608289ebf4464d62f1b69a846d7bf59ce124d44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/superverse/releases/download/dexai-connect-v0.1.0/dexai-connect_v0.1.0_linux_arm64.tar.gz"
      sha256 "ab1bac256c499e09900921d76aa6b47611b90f269f1985a6a71ac905a1fdb096"
    else
      url "https://github.com/superdurable/superverse/releases/download/dexai-connect-v0.1.0/dexai-connect_v0.1.0_linux_amd64.tar.gz"
      sha256 "710552ce5991a451978da6139cbb2be4643d9c6e34db39d261ecf2963e85e8fa"
    end
  end

  def install
    bin.install "dexai-connect"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexai-connect version")
  end
end
