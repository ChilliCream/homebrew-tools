class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.21/nitro-osx-arm64.zip"
      sha256 "70e03d786dd9acc0af21a3f9f3d7712158400b35ee23586e4d46218b6e5e2c04"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.21/nitro-osx-x64.zip"
      sha256 "a992e5b8b4773417723ea2b941190beced5ec25e41f20945a3702a04c915d545"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.21/nitro-linux-arm64.tar.gz"
      sha256 "278ac9475bd27f39d6181538e21bbe889f30bccca3cfb609072362d15a2d506d"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.21/nitro-linux-x64.tar.gz"
      sha256 "14db165647032da72adfb3b8b6a1017f03a388f9b8ffe5ee3aa2fdf372dd80d0"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
