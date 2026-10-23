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
  version "0.1.5"
  license :cannot_represent # Sustainable Use License 1.0 is not on the SPDX License List.

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/superdurable/superverse/releases/download/dexai-v0.1.5/dexai_v0.1.5_darwin_arm64.tar.gz"
    sha256 "6e8314483d6cbfb81bc8eb831777fd996d5d9ff8ff78826bfb565381fd64979a"
  else
    url "https://github.com/superdurable/superverse/releases/download/dexai-v0.1.5/dexai_v0.1.5_darwin_amd64.tar.gz"
    sha256 "36f0b035ba22174757f83494a35a8311b344565e5ac95c510b9be1c230bb7816"
  end

  def install
    bin.install "dexai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexai version")
  end
end
