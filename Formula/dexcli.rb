class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.10.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.10.0/dexcli_v0.10.0_darwin_arm64.tar.gz"
      sha256 "1f9c12be1a8b4c7f65af57b93db2a125ff70be63daaf98e902a2b792b095bf97"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.10.0/dexcli_v0.10.0_darwin_amd64.tar.gz"
      sha256 "927d48d360da5183b4956823e827f890fde6da8756a954e5f647098e0e6c348a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.10.0/dexcli_v0.10.0_linux_arm64.tar.gz"
      sha256 "6ce2d4cdc8a2d91b6fba0c549bdf238ef8d210de69cd140bf60deef59c1412f4"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.10.0/dexcli_v0.10.0_linux_amd64.tar.gz"
      sha256 "0cee3b0795147b581c45d2258b0c2d581cd35ce75c515027e2d9b294ce364e2d"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
