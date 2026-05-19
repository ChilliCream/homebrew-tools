class NitroCliAT16 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.5"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_releases
    regex(/^(16\.\d+\.\d+)$/)
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.5/nitro-osx-arm64.zip"
      sha256 "62fbc0e6d5262cbc63cc70263e3a3f9375a8203cbda2e643b59cd3564b5045a0"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.5/nitro-osx-x64.zip"
      sha256 "84c5105bfa08308903b7edeb02a2647dcc7341686910100d875905dd35c159e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.5/nitro-linux-arm64.tar.gz"
      sha256 "16ba15290235db966bca82b7f08a71ef9c90a37dbcc7a573a91bbae9e56e349e"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.5/nitro-linux-x64.tar.gz"
      sha256 "575fd995ea9f1bea832f48957cccfa5556a6168df6a883ce3d63fcb51ca98759"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
