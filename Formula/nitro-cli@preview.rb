class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.0-rc.1.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.44/nitro-osx-arm64.zip"
      sha256 "3e1d300db878af8e395346a3f94f7a0d79f48d3783deef5576ac097028414837"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.44/nitro-osx-x64.zip"
      sha256 "5fa2f4a3e8ad98d1360a9700b88a4556df49d86c64969082f1438cdb361b72e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.44/nitro-linux-arm64.tar.gz"
      sha256 "895f2dd367730674a6d728a823e780b5a2a3f789fc4b1972959aa65a91656b7c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.44/nitro-linux-x64.tar.gz"
      sha256 "884ed7dad7d9fd27e56987a624d5bb0c257f53f761667acfb230f2967737c053"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
