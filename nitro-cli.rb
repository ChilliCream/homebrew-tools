class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.39/nitro-osx-arm64.zip"
      sha256 "3cdf1b434c3dd2be8a61ea3569fd9054068fa72146f07fbc276fb4ea484b4b8b"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.39/nitro-osx-x64.zip"
      sha256 "eb1eca158fe391979e3880bcf4cf7fc9852f9d54ab0b53f9d9957a23705021ba"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
