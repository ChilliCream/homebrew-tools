class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.60/nitro-osx-arm64.zip"
      sha256 "4514969112f6ead54d8d09b83ab9fb8613c8e8e68c939386c73481ea33223a26"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.60/nitro-osx-x64.zip"
      sha256 "d7ee3b7a004be6018fca5dec132c764279fc62110c715debdd7f1c9340f0dd05"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
