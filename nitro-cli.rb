class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.59/nitro-osx-arm64.zip"
      sha256 "12c20e58a218c813455055eaee61117406c0f89a7effd2e62f673fa266490098"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.59/nitro-osx-x64.zip"
      sha256 "a998d05e0a543c43bb4b2a3eca8c71e5bff37df662c10c43b2d2d5ab50be9f58"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
