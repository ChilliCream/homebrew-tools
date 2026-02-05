class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.43/nitro-osx-arm64.zip"
      sha256 "3d5b7d4add81167f57888bb2499f734b69f8d6edebf6c27f11fe279211fb214b"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.43/nitro-osx-x64.zip"
      sha256 "0358e63a5cd8108a4a41be2f8bcc5545549a4755445dcc5323a2ac8137a0c555"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
