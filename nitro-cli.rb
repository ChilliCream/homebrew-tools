class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.45/nitro-osx-arm64.zip"
      sha256 "d895ffce87d6adbc609a0b44cc7f3d4e025f358a279aa117b14b842eca5c77c2"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.45/nitro-osx-x64.zip"
      sha256 "bf5f2e02f6a95e9e80babf4bb6616ed3da1f8d116050c46f96765c723997d877"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
