class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.39/nitro-osx-arm64.zip"
      sha256 "805eaabd81818051247c1d44c518b1885a6aff45414dd813ed94e54479e64833"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.39/nitro-osx-x64.zip"
      sha256 "5c4dbf69debd653f40d027a700372a918bfd3ca5101e8fa5527455597206d869"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
