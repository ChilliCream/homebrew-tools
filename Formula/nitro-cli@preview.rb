class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.2/nitro-osx-arm64.zip"
      sha256 "6aa6a6ca1aee9065e11cd6c6d8df3eee203b53ba4decc85cb5ec7d68247fedfd"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.2/nitro-osx-x64.zip"
      sha256 "95a46b195d93df01984c1125448d2671148ff4c23afbca603953813301ffe9ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.2/nitro-linux-arm64.tar.gz"
      sha256 "82f6d7ca6e0d0b73a124c0a07c9f43cc2ea38af4a73d3e36a868f3c04c43b2fb"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.2/nitro-linux-x64.tar.gz"
      sha256 "5e8cf7c715289010e0e59ad5cd947d6cd8ecd8756875c6e7295c1de0554c56f5"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
