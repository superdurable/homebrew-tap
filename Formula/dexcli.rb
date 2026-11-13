class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.3/dexcli_v1.47.3_darwin_arm64.tar.gz"
      sha256 "1e9f4daacb98c0c32a00c558cd068b9cb1d017c2914b12635ffdf79532be6e33"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.3/dexcli_v1.47.3_darwin_amd64.tar.gz"
      sha256 "0f91d837a163757e78afd09273caa2a9283d3f7c8257014c624d91106296620d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.3/dexcli_v1.47.3_linux_arm64.tar.gz"
      sha256 "f232d38945bfd6b388cc1052f12ed41a960f4621e22e63eb78e1273143bcebe0"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.3/dexcli_v1.47.3_linux_amd64.tar.gz"
      sha256 "b0c70bc8a0df9326f915f73de88d7e2404504f6b6abe7d58dd9be335a5a844a8"
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
