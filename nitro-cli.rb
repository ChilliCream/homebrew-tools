class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.25/nitro-osx-arm64.zip"
      sha256 "b55655cf630b0e1e575cfe2d2df21279e9943d81eaee1b88b9a8b8c6fdbafd46"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.25/nitro-osx-x64.zip"
      sha256 "2d742a2383e65342ceb0fa43000c3fbbdf8f7918cff2d92878926792938dbe24"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
