class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.4/nitro-osx-arm64.zip"
      sha256 "375f895976a82b57554782150b0195ae0a210f2cc8461da09aec3c739e6de62e"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.4/nitro-osx-x64.zip"
      sha256 "8c30743336333c420ccb8610d19692cd5b56edb932e2b0aa67a10094579d7ee2"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
