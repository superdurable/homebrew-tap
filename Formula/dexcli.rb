class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.13.5"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.5/dexcli_v0.13.5_darwin_arm64.tar.gz"
      sha256 "cb9680ee6345af4a6fc23cb560c40dbb6d04553931a3687e118c8af265d41c41"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.5/dexcli_v0.13.5_darwin_amd64.tar.gz"
      sha256 "e56380452ff079cef62dad036d53995b743f8d7fa4f7d36f5efd67345d6715ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.5/dexcli_v0.13.5_linux_arm64.tar.gz"
      sha256 "dd65b12228cf3400ed24218615b890e48c1d4516062e9e88dacd6e16165d9d2c"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.5/dexcli_v0.13.5_linux_amd64.tar.gz"
      sha256 "9e498a59470ab087b7d732fa9700211e02a128dc5b37e5cbe1b40710a058f0f7"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
