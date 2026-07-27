class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.5/nitro-osx-arm64.zip"
      sha256 "a131168ac1d318c95bdfa72468eee4e20ac1e8a89da7614077b751100b077e46"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.5/nitro-osx-x64.zip"
      sha256 "1d2502a73f55e22d3fc0d8fd485ff79ffc578a216c116eafa22b44a7ca416afd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.5/nitro-linux-arm64.tar.gz"
      sha256 "cb6f08350e4c3ae0f664192df185a999d5cacf1a7b0a4b725e4d4aab1fb843a8"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.5/nitro-linux-x64.tar.gz"
      sha256 "188267905b978549d4db91d16fc37d6faa774bf68ecc737e1cc60d10e707ce76"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
