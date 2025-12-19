class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.22/nitro-osx-arm64.zip"
      sha256 "89bcce52af9e9a138a0e9047c8148dbb5cfefcd981441a06a789dbd59a1f43cb"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.22/nitro-osx-x64.zip"
      sha256 "204012e32c8022a6430f2d4f8087aa64e062eb618d5a02bb75e74c83ff907f7a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
