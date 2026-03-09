class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.36/nitro-osx-arm64.zip"
      sha256 "31b37086d7f49fc8870d8798f2bc944041b867d2daa0d66ea8a94cf29f379554"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.36/nitro-osx-x64.zip"
      sha256 "e9ef76a747bf631af2150cf7d1697830f22abb1a09034b7f2189bbca31a637ef"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
