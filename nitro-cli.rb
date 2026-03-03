class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.26/nitro-osx-arm64.zip"
      sha256 "281f2fc4b5364da5b2fe4976ff26789ee4a8088323de9792614359cb60715f59"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.26/nitro-osx-x64.zip"
      sha256 "fa9adda9491f23003cc0573fb157be2e840b488e5b2ef24136b34954f7a8f5d3"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
