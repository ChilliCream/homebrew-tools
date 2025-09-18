class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8.2/nitro-osx-arm64.zip"
      sha256 "e23a56b42ad8360551124610a939c63ad6b154d6d4fb121e62dca3662efbbd34"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8.2/nitro-osx-x64.zip"
      sha256 "241ea0c68b082200e6336683d6f9cf0fc861a51c848046192d643f8bc4c5f069"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
