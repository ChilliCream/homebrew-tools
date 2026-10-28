class NitroCliAT1673 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.3/nitro-osx-arm64.zip"
      sha256 "909ea0c9bde0216b836b585e46500847fc63e0e563f7f6c2e838cd4a437da3ed"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.3/nitro-osx-x64.zip"
      sha256 "3d5d1520b1ddf92a97564932918272d90a0da19dc1637679f10e7df495de5159"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.3/nitro-linux-arm64.tar.gz"
      sha256 "3b48927891c458ba1e99dfad8ee846d7d00b291110b343dc88f87e497e38d74c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.3/nitro-linux-x64.tar.gz"
      sha256 "75bfa7fba65878386ce3443e104cf5aa0cfc659519cf069cf122d3c8450c51c1"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
