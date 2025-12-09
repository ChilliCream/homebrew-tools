class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.15/nitro-osx-arm64.zip"
      sha256 "b9eb5896c718e05ba4a2d73199830f61509cfb85580e8c1ffd74a7bb85b945dc"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.15/nitro-osx-x64.zip"
      sha256 "381118c65b772f6e67fe8b73de44928607379bd6f0077f5d45fd3a5c0109a66e"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
