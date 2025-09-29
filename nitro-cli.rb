class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8.6/nitro-osx-arm64.zip"
      sha256 "c5333668bd2af46e86b953a87a214499a39339dfac519cc4b7b3b7cdabe2cf63"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8.6/nitro-osx-x64.zip"
      sha256 "e5c474eca05f2f6d2fdcc71278fd436f8dcc30f70e598efe816abbd1b61a7026"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
