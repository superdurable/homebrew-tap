class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.13.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.13.0/dexcli_v1.13.0_darwin_arm64.tar.gz"
      sha256 "1334de57bc19844cb03b04419074366f96057f24775817e94b4010f576bbe882"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.13.0/dexcli_v1.13.0_darwin_amd64.tar.gz"
      sha256 "64cd29557862ffa84308894d4850ee5c26dc3de1a947ec0fe37d207a1a9a0962"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.13.0/dexcli_v1.13.0_linux_arm64.tar.gz"
      sha256 "1d57659bce8fd01761ebca35f6bc326b3cd3393e45a8e3445ef8b7287717b08f"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.13.0/dexcli_v1.13.0_linux_amd64.tar.gz"
      sha256 "ea6465638669e08ebae7a8d035d75b798f30988fe5ab485ba3e31c1829769aa7"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
