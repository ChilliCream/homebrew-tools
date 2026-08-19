class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.2-p.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.4/nitro-osx-arm64.zip"
      sha256 "b9cacf13ea79a5b9cf0dcec83447636c03e304532f3959374c8774ce511d8ad3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.4/nitro-osx-x64.zip"
      sha256 "78bd93d93e85c6f9c125e019bd9530d93695b806e9263ccc8f6b4ea82bbdb790"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.4/nitro-linux-arm64.tar.gz"
      sha256 "39b8066448c54dea050d23057dd16191dfe40038c836b37f2726ae00526984f3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.4/nitro-linux-x64.tar.gz"
      sha256 "b20c559c349765a0ec41c18475e9bac6713169d832e82bd9df8b68c52d3dfb7c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
