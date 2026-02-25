class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.17/nitro-osx-arm64.zip"
      sha256 "5ed68f4a571adf05126d02dbd04354cdacd940ce477c8aaccd3e0a5161855d9e"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.17/nitro-osx-x64.zip"
      sha256 "61048a6783d69444ab233a7917593d26881904eab07d3187733189bb6af381da"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
