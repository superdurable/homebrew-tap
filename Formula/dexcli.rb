class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.36.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.36.0/dexcli_v1.36.0_darwin_arm64.tar.gz"
      sha256 "d5d5e60d1e2eee515380ba1e18d09fcc2d690ca806b6d59627005a97b7246639"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.36.0/dexcli_v1.36.0_darwin_amd64.tar.gz"
      sha256 "aceb4b25cec1f6916ac30d98fecea6119476b7a2840cb81fb6cdc49afeb50df1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.36.0/dexcli_v1.36.0_linux_arm64.tar.gz"
      sha256 "343d36c2d4686167e6e089f7215c4774c94b1f9a8d1ef57ccf608e48137095d5"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.36.0/dexcli_v1.36.0_linux_amd64.tar.gz"
      sha256 "ba924668653cf45e3ecd61e1c82cfc78d59ddb6dd5def3d55ded859395913a01"
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
