class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.12/nitro-osx-arm64.zip"
      sha256 "33752004864c2818ee8ec8cd590b1a671a3a4154c94b605d76fc5d972fd860c8"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.12/nitro-osx-x64.zip"
      sha256 "7380664248f59f9ee4447591a0b90b34bd4cecb9652285e7e7249725f14cd537"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
