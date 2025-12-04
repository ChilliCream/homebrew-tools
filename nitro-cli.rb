class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.7/nitro-osx-arm64.zip"
      sha256 "9536c251ecdc1c7db8fdb7f318b216a72eecba89a7b5d1526dc6f58b819a61f8"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.7/nitro-osx-x64.zip"
      sha256 "ae527b83de416a0550fc76b568e0b10c300a93e57b83cdf605dea0a449602794"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
