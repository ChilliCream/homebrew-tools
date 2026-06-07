class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.4-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.1/nitro-osx-arm64.zip"
      sha256 "64df57707cc3f3e213f80475706ecc602831389572faac2ca188a322f52d2a6d"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.1/nitro-osx-x64.zip"
      sha256 "7d762b20e96b65cc9a141373edd0d96b3cf443523ab11db3b7954acfd9028f41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.1/nitro-linux-arm64.tar.gz"
      sha256 "d6795015c5e002e4d07d93caac12784d1633eafa54ea7587bb13c559b2c18981"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.1/nitro-linux-x64.tar.gz"
      sha256 "241e38195a1820506d16e9070edaf477dfdd9502ebee138f06ec7261518048a7"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
