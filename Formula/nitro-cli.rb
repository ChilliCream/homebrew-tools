class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.4.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0/nitro-osx-arm64.zip"
      sha256 "a3a356e78e8de0897aae17da48864380f841d5634f23b103055dfe2c34d2cd7e"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0/nitro-osx-x64.zip"
      sha256 "5fe181efe5493964bcd0fef459a323b586e63d4e9e0879a1ddd74a4bbb906d21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0/nitro-linux-arm64.tar.gz"
      sha256 "51ae0a67572d2ee934fcdaab5996d755fd9b8ce0dfe101ac46c5f0f3663aa155"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0/nitro-linux-x64.tar.gz"
      sha256 "e62f599a30df9df0cb7f310b43c545fd0ce6943d268fa4ccb654cce24a253df3"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
