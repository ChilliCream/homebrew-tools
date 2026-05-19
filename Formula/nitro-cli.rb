class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.4/nitro-osx-arm64.zip"
      sha256 "e97dde7e481a3528e5854c45fabe91b9976d26a270bf1581c57c1f14cbc1b36d"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.4/nitro-osx-x64.zip"
      sha256 "dfa77a1c65a700180d6531a816a6495dc076565015ca550cc80b115e82de051a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.4/nitro-linux-arm64.tar.gz"
      sha256 "fa7b01ec642cd5cc8332db42cfbbe897c42a7776c954637c7b473d9646133bb2"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.4/nitro-linux-x64.tar.gz"
      sha256 "beea958e36c3fbd6bb6095b579bf600048e7e395d387caf5bfa52e8aeeb6c17d"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
