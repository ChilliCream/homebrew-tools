class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.11/nitro-osx-arm64.zip"
      sha256 "cab4cfe4cf52daa692126f2e78acd1c4564d6dd581b85bd9a6f3267fa0efd95b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.11/nitro-osx-x64.zip"
      sha256 "c420d8542c51e8265c18b89010271c59143a29f1cac855714b4f522b4b0acc4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.11/nitro-linux-arm64.tar.gz"
      sha256 "125a2addbf1a609dcd0f359c2b982214dba351131caf65a108903867082ab77f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.11/nitro-linux-x64.tar.gz"
      sha256 "4bd80f61ea4a63d28b5f3e3f3cd3b37615bb673e1231085aaa2cd84df285ad5b"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
