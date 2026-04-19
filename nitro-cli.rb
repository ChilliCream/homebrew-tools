class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.6/nitro-osx-arm64.zip"
      sha256 "f227c4800500c7a927506f0da8a55d0f052fe1dbd23b966b0df2a894f0647427"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.6/nitro-osx-x64.zip"
      sha256 "fa08dd31ec1f79256ef173c8acf54b318ef3e7d22c68ed5a5628f2807c3c821b"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
