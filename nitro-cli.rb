class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.24/nitro-osx-arm64.zip"
      sha256 "5e7af58f74cbd139312fa664302a47de8f25a182c795c4ca99a8ae201bd7c289"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.24/nitro-osx-x64.zip"
      sha256 "508b4bce30c58da96bedf980a1e067f89dd4fd837a9d6b2d975a8c7b187adaae"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
