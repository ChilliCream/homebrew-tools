class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.1/nitro-osx-arm64.zip"
      sha256 "3f189b6a4aeb6bc61cddb2a3290af8a2efa24d0068b492e82e4db110a87cfd64"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.1/nitro-osx-x64.zip"
      sha256 "a7416efaf7c5f042987245517abaab487c5b56c20b67e37102f2e392fce89620"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.1/nitro-linux-arm64.tar.gz"
      sha256 "b8c17eb788a4c2fea73f392be0e785c4b3b4dd3a6f9cfb4fd6ce816fae4bfaa2"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.1/nitro-linux-x64.tar.gz"
      sha256 "01ee182826b8188ed9f390e2cee0c95cea2179aaa8ebfac4cb6e65bc19e1e382"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
