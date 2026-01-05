class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.25/nitro-osx-arm64.zip"
      sha256 "d483909c8509b8b1fc518b9cc1f681cbb28a6475607dd82445aad520429fcab8"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.25/nitro-osx-x64.zip"
      sha256 "19ce9d6ca39926d8e150aa69fb18ef4eabca11bec50d96438430aa29e342f963"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
