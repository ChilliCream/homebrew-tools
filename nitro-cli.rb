class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8.4/nitro-osx-arm64.zip"
      sha256 "a11fd06de16d8519e4067effaa18e6681228ceace333ce1a96e33a611e5c82c7"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8.4/nitro-osx-x64.zip"
      sha256 "c604846d011bc2f6a96e2b808960a962f4bf9cf4f987c9a61fdbfb9436ea9556"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
