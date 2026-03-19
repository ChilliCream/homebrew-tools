class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.50/nitro-osx-arm64.zip"
      sha256 "4d23c3df7b3ce6be004ff3f0de61c6fe16f96e6a956e47c899a80785cb8c21d8"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.50/nitro-osx-x64.zip"
      sha256 "e1471f3859d0d2f3d9c6325c5007380a290ec184220f62b96dfffbdbffc7318d"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
