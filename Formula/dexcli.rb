class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.5/dexcli_v1.47.5_darwin_arm64.tar.gz"
      sha256 "5de69d6623ff0633e5f738458eea76324e115f423910aac88fb6d4f203c226b3"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.5/dexcli_v1.47.5_darwin_amd64.tar.gz"
      sha256 "f8fb4ce798553baae354ed641d85e4cc360d02772f356dde8167891f792e3678"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.5/dexcli_v1.47.5_linux_arm64.tar.gz"
      sha256 "39f56208ff0d8302751035c44c235117c9febcdab7ceaeba6a4c511d4c3de16c"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.5/dexcli_v1.47.5_linux_amd64.tar.gz"
      sha256 "4519e8c0330a5be83c78a5d74166852bd6df72e8f1558823843cdcf4741fa7cb"
    end
  end

  def install
    bin.install "dexcli", "dex-server-zd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
    assert_match "dex-server-zd", shell_output("#{bin}/dex-server-zd --version")
  end
end
