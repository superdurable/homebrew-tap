class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.9.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.9.0/dexcli_v1.9.0_darwin_arm64.tar.gz"
      sha256 "bc2f31cc05008922b7d340ec4b3053d37057553d240aa08e7471cbd6d2d4ce3f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.9.0/dexcli_v1.9.0_darwin_amd64.tar.gz"
      sha256 "1e06ca303274fa1e02b60c1fa0220193759a315f42698c2cb06a142c812994d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.9.0/dexcli_v1.9.0_linux_arm64.tar.gz"
      sha256 "099749b385cd40a996367d88a5965e748f83a1ef7fcdba54c594cbc27be528ca"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.9.0/dexcli_v1.9.0_linux_amd64.tar.gz"
      sha256 "b980cf814dbf03c1df112f60503d6d9c4b42be6004a24d2226cd3ea4d9cba394"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
