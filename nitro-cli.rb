class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.26/nitro-osx-arm64.zip"
      sha256 "fafa6985826a85ed070d202cd39dc8c364793204f6b971d9f65827af4ab88bd5"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.26/nitro-osx-x64.zip"
      sha256 "eaf7983a150e73deb6ad2f69c7da2880bc268fa7f7ea53a425070e336d6bb521"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
