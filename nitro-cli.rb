class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.15/nitro-osx-arm64.zip"
      sha256 "fb5d707b1f769b6a380a01ad722c8336a57c1c6419c6003ed12d597e204ac4de"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.15/nitro-osx-x64.zip"
      sha256 "cf9d037e71f20ea9792fb8ad9e039ced85d1cd8797e7e3320b8217e9eaaa1916"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
