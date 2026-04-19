class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.36/nitro-osx-arm64.zip"
      sha256 "41bc4333252e7c70a10d70d8ba4ff48744652127f9a127f4007e21762ae17c64"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.36/nitro-osx-x64.zip"
      sha256 "232c4e6f4673e0257397f2089892a2e9990fa69e02ff35917983c12c4f2ffc60"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
