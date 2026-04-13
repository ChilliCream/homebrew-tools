class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.1/nitro-osx-arm64.zip"
      sha256 "f1ecfa135b91629e4b608eebb3de3185fcfd4b2744eb6f0bde6090c62ca7c7ea"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.1/nitro-osx-x64.zip"
      sha256 "9c9dddb036e3c6ee341019846242f2a4d5441431a06b7ab6fcc4f06acdced8d5"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
