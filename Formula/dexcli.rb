class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.6.4"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.4/dexcli_v1.6.4_darwin_arm64.tar.gz"
      sha256 "793fc72280bed978e4e8af03434751d817a549f001ccc9a43f91a1273f43026e"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.4/dexcli_v1.6.4_darwin_amd64.tar.gz"
      sha256 "17cf55a3c5faa620f1264485a9528f74e295fc698f97cbb7e17b4cd053a442f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.4/dexcli_v1.6.4_linux_arm64.tar.gz"
      sha256 "13e66c168cf55679643daf88c5a17476433ea248ff5cf0dd7a51feedc0356978"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.6.4/dexcli_v1.6.4_linux_amd64.tar.gz"
      sha256 "c9bf12f4c2b0a3460b9f4757f164a06be5f608e56bc908a93f98d35ec3cafcad"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
