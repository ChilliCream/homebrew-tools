class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.8/nitro-osx-arm64.zip"
      sha256 "2819490986bc059b669e07eab68365f23564b8340015c30a63a146795e7edc9b"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.8/nitro-osx-x64.zip"
      sha256 "86e4a74279b8171b4e7fc8d64e7ee172c2a97b0d3e62ff2de9f931e93b87293c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
