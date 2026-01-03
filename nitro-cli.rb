class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.24/nitro-osx-arm64.zip"
      sha256 "5cfa87a74383b58e29f5973500deb2b61c2e56ab5e28534919c48fefbd33326d"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.24/nitro-osx-x64.zip"
      sha256 "d85ac1b962fc328ae52444640148d9be32a3c8290187c5bbed89324bbb670c5c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
