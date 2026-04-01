class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.24/nitro-osx-arm64.zip"
      sha256 "79bc49706948d65096cbedfcdede9d212061e48ecf738f7a34d76de71aed71fb"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.24/nitro-osx-x64.zip"
      sha256 "40e917a3f5e3bd2575900c1716e4336d817a32b9a20083e485367905fea61497"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
