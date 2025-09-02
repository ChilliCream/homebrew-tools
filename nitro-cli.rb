class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.52/nitro-osx-arm64.zip"
      sha256 "a5983c5e20664ed2298b94e39949116d2bfb97b20d7aadf413e1611db2f30617"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.52/nitro-osx-x64.zip"
      sha256 "555475beffc4a4aae0f028371ac19cf76fa62b569572028958599f6a2a61145d"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
