class Dexcli < Formula
  desc "Command-line tool to develop and operate Dex"
  homepage "https://github.com/superdurable/dex"
  version "1.47.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.9/dexcli_v1.47.9_darwin_arm64.tar.gz"
      sha256 "d8f66909297b494a6ddc4c75fb7c788325df1af9f7df560b3157b8b303f17377"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.9/dexcli_v1.47.9_darwin_amd64.tar.gz"
      sha256 "b48d89d3efd55fe8dd3abeb88228d149760f9c4455cd47b339ab1f63f753d8c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.9/dexcli_v1.47.9_linux_arm64.tar.gz"
      sha256 "718b4acc874336f43a6c986b13e721dd20020a49ef270779b870e32069387006"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v1.47.9/dexcli_v1.47.9_linux_amd64.tar.gz"
      sha256 "f2fc03388dfbe6541f9309a1dfe035833b8a38fbad4e3caccaef602a2904131b"
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
