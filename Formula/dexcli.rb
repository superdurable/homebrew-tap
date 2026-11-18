class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.14/dexcli_v1.47.14_darwin_arm64.tar.gz"
      sha256 "ea401ab8f164e196eaeeaf1bfa9a9ef54f92630ed5f25a86c0939af5aeb3468c"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.14/dexcli_v1.47.14_darwin_amd64.tar.gz"
      sha256 "2cd9c532d0208e34357ffc739d99f9d0e06519c8dccea5639bc2175f8a19121d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.14/dexcli_v1.47.14_linux_arm64.tar.gz"
      sha256 "6044c3a0e390679ef31fe47f5f7ea568dd8ab4784ff7dfcdf115f0154a3bbb8d"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.14/dexcli_v1.47.14_linux_amd64.tar.gz"
      sha256 "9e5ede4282cef2ee036e524801f82855a933d929efc8f95f1d3e02bf9efe5aff"
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
