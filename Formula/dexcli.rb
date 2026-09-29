class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.1.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.1.0/dexcli_v1.1.0_darwin_arm64.tar.gz"
      sha256 "ea92fe80dbc0befb809a95a1d787699e305bd2bd75bd3b84f991dab37227fb7e"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.1.0/dexcli_v1.1.0_darwin_amd64.tar.gz"
      sha256 "c0fb3c3ace7b293a17ed095ec925246f476f3f7f68f81025480810aaf9b9fc9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.1.0/dexcli_v1.1.0_linux_arm64.tar.gz"
      sha256 "3d6d38969851c6185bd75ab744de57ddf44de4cef90ec229611c48385729d3db"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.1.0/dexcli_v1.1.0_linux_amd64.tar.gz"
      sha256 "74c9174ad83a5cdec0f60af84aa334f47ce4821a43bfca6678e55bee6e26cfc4"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
