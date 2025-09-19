class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8.3/nitro-osx-arm64.zip"
      sha256 "ad68f574e7e356d6779043a1e3e87b816fd37cc8880331012158499f98f80349"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8.3/nitro-osx-x64.zip"
      sha256 "0e4a9756980f6551afa900d3e00f697ebfd58f6d990b0d5459e2588ef5f9e4c7"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
