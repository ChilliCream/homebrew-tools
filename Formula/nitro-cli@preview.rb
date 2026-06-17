class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.2.0-p.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.0-p.3/nitro-osx-arm64.zip"
      sha256 "61bbba80f83ea842fe8b857e6a4a408eff6ac04602c91ec2d373b102003afc94"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.0-p.3/nitro-osx-x64.zip"
      sha256 "7f6f9ec515709e7d01025a82ce74b495d0211ca13c3aa1fb472ff4b034c5c1ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.0-p.3/nitro-linux-arm64.tar.gz"
      sha256 "aeebc21dc61c24e8b10153b9687b3d9dcdb7583594e4f21ecf7555b1e67ec4cb"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.0-p.3/nitro-linux-x64.tar.gz"
      sha256 "8f79d4c8a1f8b9326dfbe9c1be289be8a886660dfe530e8541e5d5e9e420637a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
