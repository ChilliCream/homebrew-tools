class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.4-p.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.2/nitro-osx-arm64.zip"
      sha256 "2bc7ba6080978e91a107edac036d8c5eee3c7ffdcf093f089d101c9491a6a083"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.2/nitro-osx-x64.zip"
      sha256 "a2e5d7b4bd3f29bca056052b0fef2430b79f772e0833253d94abe83286192b5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.2/nitro-linux-arm64.tar.gz"
      sha256 "5afbd32b0561589194e433f70278c516259cc097ddc6db466c6e1bedeb7bcfa7"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.2/nitro-linux-x64.tar.gz"
      sha256 "24e86e63bf454a3722bc5a257f834ea0d2fcd5260b8da120efd97f59cd6e7028"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
