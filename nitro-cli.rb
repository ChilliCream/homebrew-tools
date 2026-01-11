class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.28/nitro-osx-arm64.zip"
      sha256 "d0aae73122c402fe4c76037998b56f81c5eb9a88d354beb881901418c8e5bfb3"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.28/nitro-osx-x64.zip"
      sha256 "68472c8bda285c2589cb6d832c843fd3a1681792a040c67c94f950e64673a640"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
