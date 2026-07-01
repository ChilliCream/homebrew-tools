class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.4.0-p.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.12/nitro-osx-arm64.zip"
      sha256 "bc7abef0ea1155786dfb9e1abba6db2bbc423ff9ea678f5ac02c21ef343dafa4"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.12/nitro-osx-x64.zip"
      sha256 "57a4558fe429f19bf6647765115f09e765b20df7ca9abb44c1e7a14e7f7ab60d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.12/nitro-linux-arm64.tar.gz"
      sha256 "183dac83f495f0967f78cdc5e86d815c4414b86520339b4ad988f808a065aa0b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.12/nitro-linux-x64.tar.gz"
      sha256 "73782eae173d30b275e677883116cc4bbf94236183668bfb8e5fe5536252e4f1"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
