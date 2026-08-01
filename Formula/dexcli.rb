class Dexcli < Formula
  desc "Run Dex, Dex Web, and a local Temporal development server"
  homepage "https://github.com/superdurable/dex"
  version "0.1.2"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.2/dexcli_v0.1.2_darwin_arm64.tar.gz"
      sha256 "9a6653160522c5b9f8f51881e90e08c8dd001748055c7824b9012ad6eea0240f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.2/dexcli_v0.1.2_darwin_amd64.tar.gz"
      sha256 "2979f1f2ea21645c75b1a7f4532f243a220a1ec89d45ac305c290f63ff375165"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.2/dexcli_v0.1.2_linux_arm64.tar.gz"
      sha256 "b1a00577a4075453dc70c2097d56eba7ff14cd7af5e9899dce2cf72172df3dd4"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.2/dexcli_v0.1.2_linux_amd64.tar.gz"
      sha256 "42fbd10c1bffb878d246bed939a2346c4a4eacfc3b6665aee2a8e05031fd44f9"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
