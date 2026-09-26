class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.13/nitro-osx-arm64.zip"
      sha256 "4ee8fc90489035d05d9611125b7664fd9b40631e5ada3bd67a2813e81e741210"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.13/nitro-osx-x64.zip"
      sha256 "b12806cbdbe9dfdb497763d088204e4b043f4bdaa59ea1ec0dca69afa77f7547"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.13/nitro-linux-arm64.tar.gz"
      sha256 "544de7a095550910587cfd6b68cab8522961d588e2fdaa6d278e7c11d5d3cce3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.13/nitro-linux-x64.tar.gz"
      sha256 "a8ba0f0a41cacd0ecb107f85468a44bee7ac019bfb4c722c5a2a3980a007c193"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
