class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.13/nitro-osx-arm64.zip"
      sha256 "1f0b5ed7696af33b81715b3bf3d48b5d90b10fa850a7f763cfe1c265a66502a1"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.13/nitro-osx-x64.zip"
      sha256 "47de321c63b3c8cdc4d8f488ed375e6cee1a50ec6094488b7f41cea3586028d9"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
