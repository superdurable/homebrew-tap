class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.1/dexcli_v1.47.1_darwin_arm64.tar.gz"
      sha256 "0609cb3a9ea7243efd8e77847985d675568e00f3b57a392a569e72503bc8ff6c"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.1/dexcli_v1.47.1_darwin_amd64.tar.gz"
      sha256 "a4b57b5efb35d25fcc5a70302b46c1a9ae08534c0d13c96c49c1fc39e0223a6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.1/dexcli_v1.47.1_linux_arm64.tar.gz"
      sha256 "2e343b9df3be1f651aa4fda7bed53cc90c8d0cb143b6e61926792d254aee9c22"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.1/dexcli_v1.47.1_linux_amd64.tar.gz"
      sha256 "78445a9f576bbf114d52af4b4840d4a06d80d6644416e20ce28a7a9463657fbf"
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
