class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.41.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.41.0/dexcli_v1.41.0_darwin_arm64.tar.gz"
      sha256 "10ff3572dc8a3d793492ebcd8e506870b23d2f3fb1fa4aebeca64d3870d3397a"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.41.0/dexcli_v1.41.0_darwin_amd64.tar.gz"
      sha256 "db085ccd44088292c50e7ada564d49fb23dce4092182cc1c69930f76593d47e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.41.0/dexcli_v1.41.0_linux_arm64.tar.gz"
      sha256 "e10c394b0579a0955d21de7dec83cd0b0f05313f038ccac52199852f663aa6e7"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.41.0/dexcli_v1.41.0_linux_amd64.tar.gz"
      sha256 "8592d9d95411237306053068721bc6a758d6dc01212f2fa41064aa52ed42bd35"
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
