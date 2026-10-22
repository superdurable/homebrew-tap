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
  version "0.1.3"
  license :cannot_represent # Sustainable Use License 1.0 is not on the SPDX License List.

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/superdurable/superverse/releases/download/dexai-v0.1.3/dexai_v0.1.3_darwin_arm64.tar.gz"
    sha256 "eb8bb9e8f4071590043af2fc5818f1b54e4c888be52e17ed3373360e480b61cc"
  else
    url "https://github.com/superdurable/superverse/releases/download/dexai-v0.1.3/dexai_v0.1.3_darwin_amd64.tar.gz"
    sha256 "b7b2efea4f0ab517ab6da0c8d52663aef2920dc5266ea5409cacbf6359ec3775"
  end

  def install
    bin.install "dexai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexai version")
  end
end
