class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "1.10.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.10.0/dexcli_v1.10.0_darwin_arm64.tar.gz"
      sha256 "183273d203e66d747f39e87c9b99239e0751cd69c9d9221745b2de94f34226ae"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.10.0/dexcli_v1.10.0_darwin_amd64.tar.gz"
      sha256 "1db5a28cdcb69d23fb2609e7f903e9ae4bba370374247e24b6c52440f529b291"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.10.0/dexcli_v1.10.0_linux_arm64.tar.gz"
      sha256 "f519f8a23c2021a3900481d0db52b742c540acfd44f876005d0e990c4e482717"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.10.0/dexcli_v1.10.0_linux_amd64.tar.gz"
      sha256 "1a20aa05efd1c4d758a04f4df8525524d629554daed8cf7cd0c93127b734b92b"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
