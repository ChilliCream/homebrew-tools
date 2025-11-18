class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.16/nitro-osx-arm64.zip"
      sha256 "a46dcd6db87d2e97500bd22c19d21c3273c0b84c83203f85f1f3404a47ee035d"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.16/nitro-osx-x64.zip"
      sha256 "8a289fca56beda5dc4d4d983bd3d6be1e87ff8ae19d90dcd8f66e591b127c59a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
