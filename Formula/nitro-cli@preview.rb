class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.1-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.1/nitro-osx-arm64.zip"
      sha256 "636416a117b50111421ede68707a7c1aed9fed30d5ccbee8d74b46668c01fa31"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.1/nitro-osx-x64.zip"
      sha256 "20e9ddc1acb8768a1b846dcee6a3185cf07c966b0f7f79731749be56e4d46688"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.1/nitro-linux-arm64.tar.gz"
      sha256 "f7ea5a5a1492375bf83335fba22a07144d551c79d98958fbf766d228dda11af1"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.1/nitro-linux-x64.tar.gz"
      sha256 "2b991825c902e65bb405684f2bce96e63d833bc6593ac67e94f0cb0eb0af315d"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
