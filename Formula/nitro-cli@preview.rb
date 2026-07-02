class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.4.0-p.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.13/nitro-osx-arm64.zip"
      sha256 "a9e79d863753aff439d25421c827866ab533b43b11a18e15f8cb4d7f806376ec"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.13/nitro-osx-x64.zip"
      sha256 "a6544e1402e4317dc2029e23c75602305e45efd43be38c5fb85ffaa84e371769"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.13/nitro-linux-arm64.tar.gz"
      sha256 "d92e301b385edde1ae7a75f926ea6aaf7c0a163486ddc53970535da502eb5272"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.13/nitro-linux-x64.tar.gz"
      sha256 "b5131d1cac22aca62c2b6cedb17326779dd3a839f266b1503a09d47b0a72dd3b"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
