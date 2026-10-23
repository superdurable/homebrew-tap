# Copyright (c) 2026 Super Durable, Inc.
#
# Licensed under the Sustainable Use License 1.0.
# You may not use this file except in compliance with the License.
# See the LICENSE file in the repository root.
#
# SPDX-License-Identifier: LicenseRef-Sustainable-Use-1.0

# Filled by infra-as-code/scripts/release/dexai.sh and proposed to superdurable/homebrew-tap after publication.
class Dexai < Formula
  desc "Connect Codex or Claude Code on your computer to a Dex AI Project"
  homepage "https://github.com/superdurable/superverse"
  version "0.1.4"
  license :cannot_represent # Sustainable Use License 1.0 is not on the SPDX License List.

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/superdurable/superverse/releases/download/dexai-v0.1.4/dexai_v0.1.4_darwin_arm64.tar.gz"
    sha256 "94761c41e13cfeaafae629767139ae0c0829dc850dd1997d97690ff89b39ff25"
  else
    url "https://github.com/superdurable/superverse/releases/download/dexai-v0.1.4/dexai_v0.1.4_darwin_amd64.tar.gz"
    sha256 "8a8aa6336cf65ba9e8ae39172f41c61d58e7f89eea34373ef43adf9a0a4edc5b"
  end

  def install
    bin.install "dexai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexai version")
  end
end
