class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.46/nitro-osx-arm64.zip"
      sha256 "e8d8fba23813c1c7557ad65cdb98048c06b109487b66dbd1d614558825651093"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.46/nitro-osx-x64.zip"
      sha256 "39e314f8dd16eef38a6245e96dc7450cc60925870a8eee0e321e23d849760ebe"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
