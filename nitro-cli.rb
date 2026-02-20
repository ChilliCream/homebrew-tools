class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.9/nitro-osx-arm64.zip"
      sha256 "2acaeaab1f77211176411d08febb92be3e7d003639e2c0b29be79e2a3ff1cd7a"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.9/nitro-osx-x64.zip"
      sha256 "bfdaf566821f8ed58d70562c8ac7aa0d8e72fabe5699c3d08d3c71a7decd4dfb"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
