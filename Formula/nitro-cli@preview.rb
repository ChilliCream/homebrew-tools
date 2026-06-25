class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.4.0-p.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.2/nitro-osx-arm64.zip"
      sha256 "6102de54581c05cb5220c98343164ba4da4644e7f0330cf7762f8003b9bdb720"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.2/nitro-osx-x64.zip"
      sha256 "3afe16fa79374f03629ee34504535db3558e64df82ab6ccba344675bf4d6558b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.2/nitro-linux-arm64.tar.gz"
      sha256 "2e14c89eaffbecd0fc4abb51f61ff8712b603a93bdfeddf377089edcfccc6d3f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.2/nitro-linux-x64.tar.gz"
      sha256 "c82dd24440f58c596622e290b17bf5b38f427c6531692406bf8827f96706aa63"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
