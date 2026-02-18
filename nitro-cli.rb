class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.4/nitro-osx-arm64.zip"
      sha256 "471c52a86ee82c8a2104d1ddcd6e3e4e906d90bc22f0a924a6f035aa1ae9ddfe"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.4/nitro-osx-x64.zip"
      sha256 "436d7e5f981e719b310af51da39971ffe1ac697a670e61470938419d27c82196"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
