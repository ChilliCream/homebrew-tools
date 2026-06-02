class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.14-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.14-p.1/nitro-osx-arm64.zip"
      sha256 "14acf8f3e13ff15e85b4091c0b0e16005d3c550dcfaa697b50d7a3e6362af899"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.14-p.1/nitro-osx-x64.zip"
      sha256 "01ae8a846ea69020f94c6a56524f8f9c858fba228f147fabd25167e3772d197d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.14-p.1/nitro-linux-arm64.tar.gz"
      sha256 "8d303a1f1db8b591779fbce2af929649e1f4f64e027495ae1a6ac40414859466"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.14-p.1/nitro-linux-x64.tar.gz"
      sha256 "72c654243511ad818a04bc8fadbd6e0677d7580f041b6f35c1f5324248703aae"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
