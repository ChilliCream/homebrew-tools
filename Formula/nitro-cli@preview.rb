class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.9/nitro-osx-arm64.zip"
      sha256 "d09ec1a4e8a304143a5094572d2dca3a10a859fccf2fb81020790ad1fbfbb922"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.9/nitro-osx-x64.zip"
      sha256 "ef3cd950e7c41ab37b300ce114aa37fa4fba8f4dc46fc93ece2a0d34529d5b7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.9/nitro-linux-arm64.tar.gz"
      sha256 "041a140cd782c6fecfbebae294479cdf6382c392d888bc9847aae8678c5771f1"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.9/nitro-linux-x64.tar.gz"
      sha256 "71711eae18823a99ab7cdfb1b004a3d49f49b3e6d8e9a404e8d75da26cf17130"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
