class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.36/nitro-osx-arm64.zip"
      sha256 "7695cc352792986043b4bf893dc47e832339e49d3fe4bf17335df7c86a752658"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.36/nitro-osx-x64.zip"
      sha256 "dd69be4ca98f5e3c014b21452f73462c282cf96d206cdfb1c2cf8dfea74a48ec"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
