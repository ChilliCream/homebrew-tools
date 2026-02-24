class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.14/nitro-osx-arm64.zip"
      sha256 "2bf93d34e40398078496bb47cac46e973ebdc2e0b1d1bf35527eb81472f61b1e"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.14/nitro-osx-x64.zip"
      sha256 "5ba49e1040e8ea7b9bc9857ba47e655d5f91a8e5536df69bf219eb0fd2c166e3"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
