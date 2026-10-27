class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.4/nitro-osx-arm64.zip"
      sha256 "66ddd6780cf5acba67988c1c63862304c9024d6f7567c4ae5f7af78459d1119f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.4/nitro-osx-x64.zip"
      sha256 "5fe2b9a63531d33834c8864c05cc2c05053ffa285b24c15b1b3ca395530001a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.4/nitro-linux-arm64.tar.gz"
      sha256 "f9a325ec4501f85a6198f214b8e35938422cfab3299fc6a1d45d9bf60644b2ff"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.4/nitro-linux-x64.tar.gz"
      sha256 "2f8a30d6a1c042bd0a2da56a203faab37909a15302483c27abd312e6e6b00d00"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
