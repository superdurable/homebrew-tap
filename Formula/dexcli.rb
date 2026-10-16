class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.11.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.11.0/dexcli_v1.11.0_darwin_arm64.tar.gz"
      sha256 "eb8a3ad334c2ca1649e6090d02f555dccabfb7c3773e38df529320edc0e6cec9"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.11.0/dexcli_v1.11.0_darwin_amd64.tar.gz"
      sha256 "df5544a8cc75a6bac9a4c6103f705a5e76ff09a8c2590415dcf631a0f54e3842"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.11.0/dexcli_v1.11.0_linux_arm64.tar.gz"
      sha256 "12f157f1fcf6e923aa2e671b6d8479c1d4c09753eb04e9a37899dd1f6e70ef02"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.11.0/dexcli_v1.11.0_linux_amd64.tar.gz"
      sha256 "c187c64ecaa01c48310b923835665ce725de83f6198fe96e16fe0ea0a43dc140"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
