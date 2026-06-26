class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.4.0-p.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.4/nitro-osx-arm64.zip"
      sha256 "8aa27f257b8a03a3d7a151eba035d7bcb32fa9fdafa42b941acf55644030c7e6"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.4/nitro-osx-x64.zip"
      sha256 "68ede757c50bf934ceeb294ea2c714a6836eaab6526e151dbe8a3517016cf834"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.4/nitro-linux-arm64.tar.gz"
      sha256 "0a0260b316d6808418049e80abdf0dcf30b7dd8c4a52791bd85a3ee03bf76759"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.4/nitro-linux-x64.tar.gz"
      sha256 "97f99b6cb29050d5e71d6512d73440f3e672689fe190bea21bf2b5af804aa7db"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
