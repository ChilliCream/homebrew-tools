class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.18/nitro-osx-arm64.zip"
      sha256 "5c7df6fa3c3887438b527ccc37e3649818ee6856b9ed66923fc9bd618dd49a7b"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.18/nitro-osx-x64.zip"
      sha256 "9b9a6404ef5b86d7eab726ab0554fb9d781e99fd0b460a7631d0b958480578b2"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
