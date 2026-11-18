class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.13/dexcli_v1.47.13_darwin_arm64.tar.gz"
      sha256 "f2d7d2a909ad35b8c7e56014f7d3f8a20fb40d21ce11da5b8a0dd547a5d0324b"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.13/dexcli_v1.47.13_darwin_amd64.tar.gz"
      sha256 "941e7839895ac8c9c8fd3e1dc16775832a8b738c5d7fa35bec6a99c35b8b3fc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.13/dexcli_v1.47.13_linux_arm64.tar.gz"
      sha256 "1734ab9e3485b106498ac1a58d86718e979f4b296534c421c0a0b5c2aaa249ed"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.13/dexcli_v1.47.13_linux_amd64.tar.gz"
      sha256 "4ec405ccc71ef4ec1e2eeea57d6b432518a4bf499c2b38390ec96c71b7b5d4c6"
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
