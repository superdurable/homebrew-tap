class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.4/dexcli_v1.47.4_darwin_arm64.tar.gz"
      sha256 "8dbb396c5173bebb8fe1f89e55651272680bc3ed7f075599654c4df92b60ba95"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.4/dexcli_v1.47.4_darwin_amd64.tar.gz"
      sha256 "3eec5938481068dd27a972bed307c2e2fca7c508f8d8c905ddeeea8c75a2a5a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.4/dexcli_v1.47.4_linux_arm64.tar.gz"
      sha256 "4d3c0e020f373557c08d435b95cc28d8fa895394786eb95b107370cf55879175"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.4/dexcli_v1.47.4_linux_amd64.tar.gz"
      sha256 "9be69fe2949f6cafdd89307c45a82a0c65541eb5955e9d757a95cb5142c23334"
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
