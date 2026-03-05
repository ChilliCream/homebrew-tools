class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.30/nitro-osx-arm64.zip"
      sha256 "ce26ea4ebfc1f7b6203c38595a4ce6796845c40b860b08365404305830bdb33b"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.30/nitro-osx-x64.zip"
      sha256 "2d96f94fdb44339010b0402eef3649b594bea80c5558bc35bd7d1851a26ce7a6"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
