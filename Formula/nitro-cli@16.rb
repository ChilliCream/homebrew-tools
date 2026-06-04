class NitroCliAT16 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_releases
    regex(/^(16\.\d+\.\d+)$/)
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.1/nitro-osx-arm64.zip"
      sha256 "e7ac2bb3ebee4b68a073b1b551c9eecc2f8204da8a56afdc8ad55adcfff5a363"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.1/nitro-osx-x64.zip"
      sha256 "fa6f87d994b8e5ac8f2a9f5c6cb037ec8ec014cf0b0942957d3a0748cae61685"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.1/nitro-linux-arm64.tar.gz"
      sha256 "4f15116446de58449e7ad570b0d85f204059ed0c2fc53dc437fcbcf5f317c1db"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.1/nitro-linux-x64.tar.gz"
      sha256 "07917cb0a014be325852224db3d2c19b65e1bc12f9e3558085fffcbb60653716"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
