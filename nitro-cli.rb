class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.13/nitro-osx-arm64.zip"
      sha256 "db69fb188f6b41a02dbb76032c5a484e89a49862b69743d92e964e59d5974b69"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.13/nitro-osx-x64.zip"
      sha256 "ddd698eebed80b8cb400a6c98ae430c4443aac7d66eabbe8ad727b50f6f73668"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
