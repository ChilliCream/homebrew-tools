class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.9/nitro-osx-arm64.zip"
      sha256 "48784823bed956bfe06977f991c8ab3d32faa31437d8d6a2d986be27a1efdede"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.9/nitro-osx-x64.zip"
      sha256 "cb6c413c258df03034c177ed185d1c67f96ddb9ada62eacdba038d68a91b7362"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
