class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.9/nitro-osx-arm64.zip"
      sha256 "1c25069d47a599ff51c8db9c4ae65a7d10d6e9c7c75360560ffc3022a72efba4"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.9/nitro-osx-x64.zip"
      sha256 "210586b0911abee4084dffba75f818fec32cddca29953a95c65d315ef1af18a0"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
