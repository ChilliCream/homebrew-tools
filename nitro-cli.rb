class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.23/nitro-osx-arm64.zip"
      sha256 "d2c8f275dcbbb1530f04cfec9f579ee82779a62930731727275a2d4da49a0185"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.23/nitro-osx-x64.zip"
      sha256 "856666f8ee18fb0522c7cf5646593c36b3119fc84d33d5e65a091a96dcbf2b06"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
