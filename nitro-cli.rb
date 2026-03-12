class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.40/nitro-osx-arm64.zip"
      sha256 "4701d18ca5253b699d6ed4fbe4a9427ea72b257aa4bdf6565669117515dab045"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.40/nitro-osx-x64.zip"
      sha256 "cb803284e7dc223d2fd11b7922866e5a66abc72cbc9d2b766e8a4f8a4e85ac19"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
