class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.6"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.6/nitro-osx-arm64.zip"
      sha256 "e566b6e116fa6a2e5d80e5c79863a15f93cd5ebc8651776310a40967fcdc1266"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.6/nitro-osx-x64.zip"
      sha256 "266aaf452c2e44c66422cddacd685eeb239f4cc76b5beb1d1d15fe30dfb45633"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.6/nitro-linux-arm64.tar.gz"
      sha256 "3b1b7f223f9c71e5edf07d75d1e8728f3c99052c3d479463dd59b1ebbe1c8fa4"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.6/nitro-linux-x64.tar.gz"
      sha256 "2290fcd5d30f2e1e406541d068f58c46cb3eb07bf74f9287c5182725384cc5c4"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
