class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.66/nitro-osx-arm64.zip"
      sha256 "e19357238a46658f0f30743b5f739f84584f78aa71156969713df30531564a8c"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.66/nitro-osx-x64.zip"
      sha256 "b5e9f43d984c45b31665b53ac64f34d418a899960f6c7a099b967d7ccaeb609a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
