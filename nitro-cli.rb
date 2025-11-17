class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.14/nitro-osx-arm64.zip"
      sha256 "25b93d4fbde1e027f216884c5e294cda4e6af78b0e4f4e6fe49e5589c0af0c69"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.14/nitro-osx-x64.zip"
      sha256 "346461909a614e77d57f8a9d431e82cc8f9b9128ce52e81b441048f0f1c2e321"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
