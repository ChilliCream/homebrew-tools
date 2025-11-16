class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.11/nitro-osx-arm64.zip"
      sha256 "5c56e36c75b4b04bfd3a0d214fb144b36a9e9969e9ccfd860fae3fa564196d30"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.11/nitro-osx-x64.zip"
      sha256 "a8a8545162ca16547f19343e05785ee695f799b10270136e21c3a573c6379ace"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
