class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.10/nitro-osx-arm64.zip"
      sha256 "e5a35a50977f281de9c19a4d2d9e1717a3cca9fcf4a7e2dfa9a24463422ebbf2"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.10/nitro-osx-x64.zip"
      sha256 "74ceb4230cc93f71c93b8b70675b417db104f4c55ee108e4f4134d25fd7bf5ed"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
