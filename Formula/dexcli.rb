class Dexcli < Formula
  desc "Develop and operate Dex from the command line"
  homepage "https://github.com/superdurable/dex"
  version "0.14.0"
  license "MIT"

  depends_on "temporal"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.14.0/dexcli_v0.14.0_darwin_arm64.tar.gz"
      sha256 "8be81f81ab25915a3630a3bb5057016bcefd0f60e50d94e8f733830e1e53e5ef"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.14.0/dexcli_v0.14.0_darwin_amd64.tar.gz"
      sha256 "42862b0380f7c390aeb4e3cc61ecebfddbb25de12d6b89694bc4bfaab7689834"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/superdurable/dex/releases/download/cli-v0.14.0/dexcli_v0.14.0_linux_arm64.tar.gz"
      sha256 "82dc2b41b01a4673279eaa10d950a9badbc785d6d9a18a6e2efb40009efecf90"
    else
      url "https://github.com/superdurable/dex/releases/download/cli-v0.14.0/dexcli_v0.14.0_linux_amd64.tar.gz"
      sha256 "7f08abaf99de09ef2675e40d172d480b2007cecb61db7285314122f868059f1c"
    end
  end

  def install
    bin.install "dexcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dexcli version")
  end
end
