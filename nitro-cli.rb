class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.10/nitro-osx-arm64.zip"
      sha256 "0b028df4ff06e700de8c4d0412eb0d66ccd00ca1e4111f0616c2550fc5d04ddf"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.10/nitro-osx-x64.zip"
      sha256 "81d828bdee0b7ae27abe96dd8cfbd3950177955b8090d5a37d20fb50fd06cb7a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
