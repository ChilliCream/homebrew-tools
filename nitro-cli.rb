class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.28/nitro-osx-arm64.zip"
      sha256 "d78866827b5132509068fd8778ccf23b8b312defce30f4252b9e43f812f31cf3"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.28/nitro-osx-x64.zip"
      sha256 "d04a67bccaf6a0d85d0099bcf4a2e5e3f87d41424c3cb955a3e03b023730c918"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
