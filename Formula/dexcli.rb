class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.20.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.20.0/dexcli_v1.20.0_darwin_arm64.tar.gz"
      sha256 "cfd76f3b15cf45f38682b64bfac8fbb888b885a08deb9c9543f8547baf525ba1"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.20.0/dexcli_v1.20.0_darwin_amd64.tar.gz"
      sha256 "4ba07027962574b9ad716518a6b424e05d1a1feb27afdb20e4e1ac1be29c849f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.20.0/dexcli_v1.20.0_linux_arm64.tar.gz"
      sha256 "52d3d257ee929aefaaea28399d91deb34babfd7bd703cd8666763f8ccbe0b7d2"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.20.0/dexcli_v1.20.0_linux_amd64.tar.gz"
      sha256 "9f8ea8586f74c4f6f1079a632c585978deac6f869871a7347114f23b82030812"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
