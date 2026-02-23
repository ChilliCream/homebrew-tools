class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.13/nitro-osx-arm64.zip"
      sha256 "2fbe9e346d0e8623f8a1ed44d3f69367d1e9e74eecf01f241ac412828d5dae8a"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.13/nitro-osx-x64.zip"
      sha256 "e70535c7b305fe82974819d5d84ea7e3e031bebcf627ac4ad11b58636dbd20e2"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
