class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.27/nitro-osx-arm64.zip"
      sha256 "8722d66409bd14efdb62e18bfb678eae09ce361c76c10bd76c67878b3ce6c77e"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.27/nitro-osx-x64.zip"
      sha256 "b98adc2c60300c2415bb4383321d040c6c58ae33fe0a917249ebd64d3e541786"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
