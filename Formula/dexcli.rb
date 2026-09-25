class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.13.4"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.4/dexcli_v0.13.4_darwin_arm64.tar.gz"
      sha256 "fd46873dd807669d960053283e1a476eb5b429a85becd7618e2fa1371c7d93ce"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.4/dexcli_v0.13.4_darwin_amd64.tar.gz"
      sha256 "6c76788b719141715e14c6a5d99b772da75964eb60f85d2e71271191380fefa2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.4/dexcli_v0.13.4_linux_arm64.tar.gz"
      sha256 "913947bd34701686053ad8d5545d962ef10074c6e28900230144d02b43bd9557"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.13.4/dexcli_v0.13.4_linux_amd64.tar.gz"
      sha256 "c284d212b17880bed9cde66aba264de5d2e5825feb87d02120a4fe9a5e56ecce"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
