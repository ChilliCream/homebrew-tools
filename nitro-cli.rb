class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.8/nitro-osx-arm64.zip"
      sha256 "e71b9ccaa5b125efc4abdeb81f929437e6656fe50764eb531cc79167fca0f2b6"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.8/nitro-osx-x64.zip"
      sha256 "e84feb52be4935c216240b0f74244f7580716d19909b5595ad05acbf8e577485"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
