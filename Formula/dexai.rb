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
  version "0.1.6"
  license :cannot_represent # Sustainable Use License 1.0 is not on the SPDX License List.

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/superdurable/superverse/releases/download/dexai-v0.1.6/dexai_v0.1.6_darwin_arm64.tar.gz"
    sha256 "2da5e99f1f430ffbbc1e41f6cf5127ecf5465f5e2dc034a0e8b4eb81224db38f"
  else
    url "https://github.com/superdurable/superverse/releases/download/dexai-v0.1.6/dexai_v0.1.6_darwin_amd64.tar.gz"
    sha256 "131c258be819e51e953eaa6c668e6e57062e215e8a4bcac92c1f6988549a8f35"
  end

  def install
    bin.install "dexai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexai version")
  end
end
