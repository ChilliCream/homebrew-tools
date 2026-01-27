class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.35/nitro-osx-arm64.zip"
      sha256 "331f3e0231c9d0cd0e5f002e1a65987a5d57c7e07bf4db2104326bd5e20b57d5"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.35/nitro-osx-x64.zip"
      sha256 "50d73b7e6a70250dee95c45cb4aa94f078cf68e5d24d837840c392acbdb7c38d"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
