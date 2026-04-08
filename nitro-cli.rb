class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.26/nitro-osx-arm64.zip"
      sha256 "dd60adc9cc655a5dde5ba2ead649eb0cf4fd9c90c94ed4c9caf4cb7ae703a457"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.26/nitro-osx-x64.zip"
      sha256 "9104f99f58bef5c36998f51a42fd94661ceda8b5cb1dcd275a5940acdad83466"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
