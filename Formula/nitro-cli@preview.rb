class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.4.0-p.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.7/nitro-osx-arm64.zip"
      sha256 "e5181525609ab6cf1995bba5e3ad8429466f4b0aa02c3b3b1dccd94c2b2a61bd"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.7/nitro-osx-x64.zip"
      sha256 "26ca63bfc7cdd1ffcc3f61b7940f0622662f4f5b36f50ec2c1cce9f4db9b4937"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.7/nitro-linux-arm64.tar.gz"
      sha256 "b78f51ceb1150011d4e52f9e24914d3f00d97f66a213b90e7e39ea86ab976b25"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.7/nitro-linux-x64.tar.gz"
      sha256 "024cb3ea139dba68819996656baec6598818edee172ff62c715a5f7de30112b7"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
