class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.34/nitro-osx-arm64.zip"
      sha256 "62d039f6b7e4abe6debe5093fab8a181bdaac30572c144923dba48f5c4b17381"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.34/nitro-osx-x64.zip"
      sha256 "bf91981d4cf5bc0fcc738663e00b4b95398ba443ebe9ec73e1af0a67d25c34c6"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
