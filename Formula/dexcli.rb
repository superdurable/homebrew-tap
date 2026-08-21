class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.1.13"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.13/dexcli_v0.1.13_darwin_arm64.tar.gz"
      sha256 "8ec172f29818b076f66b1fb75c26dcb0b75b37cee1e241aa4f8e2a718b6dd469"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.13/dexcli_v0.1.13_darwin_amd64.tar.gz"
      sha256 "efe6b476d21bc5dff1968c423434c2116c8e6d6ae5e9ec5e71e408f9cada62be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.13/dexcli_v0.1.13_linux_arm64.tar.gz"
      sha256 "b1d2584c3c83bd5314785addada4c81d183c3b94eb21752c69b3372823552d0b"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.1.13/dexcli_v0.1.13_linux_amd64.tar.gz"
      sha256 "5f3aa06a43a9a6d4bc97f13617419503cf0bd5a6c3b24e538b42e4acc2e3b94e"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
