class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.4.0-p.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.5/nitro-osx-arm64.zip"
      sha256 "660d0a179c79ea3fa37fa6006964cc760545d248fb2c6cb8bc5feec450ad1590"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.5/nitro-osx-x64.zip"
      sha256 "122a81117f05f6630984cf1297792941c77a854eda341262321d2c43b9983121"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.5/nitro-linux-arm64.tar.gz"
      sha256 "b0f6d75ef5fcbfaa7ee78b9d7ce00168207eddcf4ba926d5b3e781d53fc81f8f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.5/nitro-linux-x64.tar.gz"
      sha256 "9251886eb20d5d648e9537a5f1af4ef32ef0b3ebeaf5dbcaba754f3c7657b64c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
