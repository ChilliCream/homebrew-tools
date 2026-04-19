class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.7/nitro-osx-arm64.zip"
      sha256 "f68d278df7604ff034dfaba8dbb811b3a2da9e813477abf64feab9ec1c4abc41"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.7/nitro-osx-x64.zip"
      sha256 "ebd7c34962bab669ab5c6938e93a6965b89e2a42d76fe705c08c2d6716cb8366"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
