class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.2/nitro-osx-arm64.zip"
      sha256 "7b6eeff3726c8f7a824b4d00659474d8cd415b7212eafd9e6f49d88d41d367db"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.2/nitro-osx-x64.zip"
      sha256 "9fcea385290ecf5bd4db4cdcb1bed664f4b6175a937aa919ef25fc8d33a01b8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.2/nitro-linux-arm64.tar.gz"
      sha256 "86b76fcac93215e00f23143643b9b1b2284aa7ab6cbac41f0031bb76419d85a2"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.2/nitro-linux-x64.tar.gz"
      sha256 "e27a7e81abf27be93d06a56e476a0c222a9fb26eac4968f98198ff5f742e15b1"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
