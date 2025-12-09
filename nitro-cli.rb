class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.14/nitro-osx-arm64.zip"
      sha256 "deb220fd3161b8af2d98f45a9cb2ab69dcee9b24d24a4bd709dbdd643df1f863"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.14/nitro-osx-x64.zip"
      sha256 "4f6f78bbba04fc096e04656299d2026dda4a814b47bad928286360bbb388ce64"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
