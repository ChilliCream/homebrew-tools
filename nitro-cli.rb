class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.35/nitro-osx-arm64.zip"
      sha256 "524156f913fb02f730d3f725da4034c71e993790368ac9ea94a294c587b6d311"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.35/nitro-osx-x64.zip"
      sha256 "90f8bf16333c20b710378543b579f5ed76989fe4af4bcbe41c9f8c5febd38fa4"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
