class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.14/nitro-osx-arm64.zip"
      sha256 "4b2a9b4e875b39348ab737721631896cdc430df36f2b453eb63894c726d70831"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.14/nitro-osx-x64.zip"
      sha256 "17ce9b842759f4b5498a1bf95635862cfee202677e8cf6510b16f3a55d82cc52"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
