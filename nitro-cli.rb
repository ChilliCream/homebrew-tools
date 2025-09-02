class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.57/nitro-osx-arm64.zip"
      sha256 "da58a0852b63f023faa62038b90bcfa235dea30ad63ae7d77c268daf453367cd"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.57/nitro-osx-x64.zip"
      sha256 "8cd9810a78cb9620d434e2a9ca811da8147b67b7ab78bc99d267b29f4647650f"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
