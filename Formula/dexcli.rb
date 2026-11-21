class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.22/dexcli_v1.47.22_darwin_arm64.tar.gz"
      sha256 "3308d0ea645daeb03e071a6baf8c9f8679ab642812913efe752f15f753b648cf"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.22/dexcli_v1.47.22_darwin_amd64.tar.gz"
      sha256 "2a59a4fb0ac6da9a3ff45df3de38b67e9999d988baed952531ae24e46c1f6e9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.22/dexcli_v1.47.22_linux_arm64.tar.gz"
      sha256 "4377772cfb2f8aa23e56596a602494542248e959fae86698f3d1dd88b7cf5e5f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.22/dexcli_v1.47.22_linux_amd64.tar.gz"
      sha256 "b200c6d800a8d63ea577d36b4418fb39c6bb1c4c541cb7865bf399d8feed3908"
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
