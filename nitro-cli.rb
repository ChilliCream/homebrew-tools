class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.46/nitro-osx-arm64.zip"
      sha256 "fe98a929913d2c464ab58a951aba6e6f85c31bb28770b17b74e3956eb0b0c533"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.46/nitro-osx-x64.zip"
      sha256 "5586de18e82dc85357067f6c7362654501f4a2018f5907fe8e9771ec0bd6591d"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
