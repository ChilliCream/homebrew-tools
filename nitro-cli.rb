class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.9/nitro-osx-arm64.zip"
      sha256 "e55ea68df06cc418f9c32aaf65db8f62be8fe6647fb5350110e7adb2ee611978"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.9/nitro-osx-x64.zip"
      sha256 "ecb02ca31e2e93e0d5df9ce3378edd4953f66308c3d4345147a20cf56c95df9f"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
