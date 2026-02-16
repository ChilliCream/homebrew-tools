class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.2/nitro-osx-arm64.zip"
      sha256 "96dadf44e6e303e11d72a504b685c9fc83cf525c3afc5cf086632cbaf2c0d0c6"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.2/nitro-osx-x64.zip"
      sha256 "06bd5682faed5d6cf71084d728e6ebda98d859d194073a925546ea84cadcfb45"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
