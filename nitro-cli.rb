class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.31/nitro-osx-arm64.zip"
      sha256 "802dcd2085fc5a7f021ce1796e5d272e8dc147cebd3555d7eaf69575e3245111"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.31/nitro-osx-x64.zip"
      sha256 "51ece25bd2fa8581fcd8e299b013c2a684e5a9cad110c5ca4b1f7ca8f3e9d352"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
