class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.15/nitro-osx-arm64.zip"
      sha256 "e748ab700c34e5f0aa2fc73393ed43cdcb55fd76d116b919130f84aa1a1c3fa6"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.15/nitro-osx-x64.zip"
      sha256 "14f3b62f36109f5165fae560cdc3dfd99024c57585b0d5b6dbf1e73e3a8bf11d"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
