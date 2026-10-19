class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.30/nitro-osx-arm64.zip"
      sha256 "5a6e4b34b29e3cb0c60159a31cb93a15e003da8b0f946cc4eea2ae62e002c50b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.30/nitro-osx-x64.zip"
      sha256 "8527c484c60da997536ac918ecedd8d1bd1a3c65fa6a2f70968cbe3f90790f39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.30/nitro-linux-arm64.tar.gz"
      sha256 "867e66066604dbe80aca14118708f6f33216fb6a42a68e5ee0674ce9f64db2d5"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.30/nitro-linux-x64.tar.gz"
      sha256 "b292028732f20988e55d811be7d0edfd5dc502c9a52b0b66a1e7618395eddadf"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
