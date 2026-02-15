class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.1/nitro-osx-arm64.zip"
      sha256 "96157b00bccde729eb56878a7bdd10844a5b8f14b1382c145e92765dc40a3bf2"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.1/nitro-osx-x64.zip"
      sha256 "5fe1b3a5c8ed5bac7f8cfb9a4809d48a1507af460b6b92de80dff61fc88e6f84"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
