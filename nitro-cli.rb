class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.44/nitro-osx-arm64.zip"
      sha256 "6245f3e0e6c25c096900e52f7a0cdf8a6156df191c1aab035d316f5c4f0c279f"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.44/nitro-osx-x64.zip"
      sha256 "626375d6c5b9a8b9d9832194252ca92c858e3595ddf16d85c7b82a0a360aea05"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
