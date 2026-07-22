class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.5.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.1/nitro-osx-arm64.zip"
      sha256 "319e024f947731f2c981dda80dfc46beffe0d189e37306874da4c6fed0f74390"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.1/nitro-osx-x64.zip"
      sha256 "15e06a3dc67c20b6093656f4cf1e4ef85e941e2dc35463a35cf8a52c98bc2d37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.1/nitro-linux-arm64.tar.gz"
      sha256 "7081cb773075085e6af669b9d3a4866f501736d5bcd3fda7b30f30c318646026"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.1/nitro-linux-x64.tar.gz"
      sha256 "b97e80075f8ec2d0ba93ec4d15eeba6a128b10c5bc0bf25b2ae9e8f648d1b4fe"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
