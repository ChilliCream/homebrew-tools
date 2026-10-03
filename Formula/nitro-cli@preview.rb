class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.17/nitro-osx-arm64.zip"
      sha256 "0762c2d1c6f3c4f3dd86c5b352a6e7a84cbb2af18832450d8d70b94fe6927a9f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.17/nitro-osx-x64.zip"
      sha256 "4cf5834bafcccc6cb76fc9e2ce00bd633d96b8c3d034c5257c0f701b6db4c259"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.17/nitro-linux-arm64.tar.gz"
      sha256 "2d0852edee18b865eb2ee94d2cf9f0e08d0babcfb804a60ab3b03fcf03d8911c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.17/nitro-linux-x64.tar.gz"
      sha256 "4976fb9e85fc2641ce6bd50616b6cf46a604e8f462cdca895a684236b2885612"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
