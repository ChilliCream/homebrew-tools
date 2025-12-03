class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.6/nitro-osx-arm64.zip"
      sha256 "997f35453249bce64feeb1bb691b66d379a6952236150c560180a787b0c8d206"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.6/nitro-osx-x64.zip"
      sha256 "1a65841e88250862295b8930baa6362ead004b11f9c787820e64058006fe55a9"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
