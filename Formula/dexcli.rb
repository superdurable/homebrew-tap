class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.15.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.15.0/dexcli_v1.15.0_darwin_arm64.tar.gz"
      sha256 "a4aa46c3187e98b3ca5befdb838b1e8dc5eb0a590706b7dafc38ff81f5c1dae2"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.15.0/dexcli_v1.15.0_darwin_amd64.tar.gz"
      sha256 "4de78c08aa78f2d1c24962dc8f68b8129374125559d4f8d8fa5f201c5ca29a1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.15.0/dexcli_v1.15.0_linux_arm64.tar.gz"
      sha256 "8222d7f6d6eeb11cd17d23d15783c2f710041e19545a8231db49f791e4073f69"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.15.0/dexcli_v1.15.0_linux_amd64.tar.gz"
      sha256 "611dc907e1d6f79064cd6316959d36e53b9660b26880413ab93f745b8419d95c"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
