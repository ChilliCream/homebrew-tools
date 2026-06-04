class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.2/nitro-osx-arm64.zip"
      sha256 "3bf5110fdee9749cb7e849eff4a986b78ad8b562381e971b3c93e2d1e751336f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.2/nitro-osx-x64.zip"
      sha256 "548d96db5d91c85f883ebc35e275ecc9fbc497e78b439ca5eb4ce60b505f0c13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.2/nitro-linux-arm64.tar.gz"
      sha256 "a400b4cf367a0a39db435e779cdefccdabd76ba5fcbae467ede30bbd1f8e6c28"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.2/nitro-linux-x64.tar.gz"
      sha256 "5957f53ed3b1ecc365dac048aca250e8399cb863837dd93baebb06185ff80bb4"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
