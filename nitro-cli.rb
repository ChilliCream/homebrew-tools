class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.1/nitro-osx-arm64.zip"
      sha256 "4dcd1172667deb924e03202d3a3a432289fd9b92d73c92024245d229190e5c0c"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.1/nitro-osx-x64.zip"
      sha256 "58f04c8d7438cc0371d5b9492ff2acccac1789bc60b6df7a6197fc1e7cec8f1f"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
