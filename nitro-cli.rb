class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.5/nitro-osx-arm64.zip"
      sha256 "25f7ad77638e5d254eacffa4da3cda87ec02df240d299d293274730c9e3f8cb9"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.5/nitro-osx-x64.zip"
      sha256 "9a1dbbfd1187df325c9595b94d62ff4d9abae0b2d58ef60cabf8c15f900fc0ee"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
