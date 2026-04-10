class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.28/nitro-osx-arm64.zip"
      sha256 "c977602cdc019719657395705c950af9c264bc9028925f664a56bff5a5e7a684"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.28/nitro-osx-x64.zip"
      sha256 "4967511a62e2db4a8f73f5c0840c85d62ce4951bcfd76af358a157ceee457e23"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
