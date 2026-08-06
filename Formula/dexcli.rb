class Dexcli < Formula
  desc "Run Dex, Dex Web, and a local Temporal development server"
  homepage "https://github.com/superdurable/dex"
  version "0.1.3"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.3/dexcli_v0.1.3_darwin_arm64.tar.gz"
      sha256 "39e91af73c8638d8a20132ef8380bf53bf6144ec00f982bb9cbb797d335cf01e"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.3/dexcli_v0.1.3_darwin_amd64.tar.gz"
      sha256 "ee85d929027d84f87ba41aeab28649d3832a207b290b2d0c9376eaba626a21dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.3/dexcli_v0.1.3_linux_arm64.tar.gz"
      sha256 "db1aa7d4d98e478ff742b892a5f403d6a1eb0b27ffc8cbb5ae3b9fb8a508dd44"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.3/dexcli_v0.1.3_linux_amd64.tar.gz"
      sha256 "108616baeba035bab6ce02f19ecc31a423daee48139d903f1e1fff29ffcdbfc0"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
