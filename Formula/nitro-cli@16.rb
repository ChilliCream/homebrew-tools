class NitroCliAT16 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.6"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_releases
    regex(/^(16\.\d+\.\d+)$/)
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.6/nitro-osx-arm64.zip"
      sha256 "e0b740beea070b08392e8fc4429e7227c4d14e23d0ac9fe64686e44228fbf241"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.6/nitro-osx-x64.zip"
      sha256 "060a140c7244d3f11c4a42e22d3631013e67bfda9cc733c8e446020e1ecf02b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.6/nitro-linux-arm64.tar.gz"
      sha256 "e8bdcc58a3ab2103e154788b54395e3c8341a1f2dceaecd44a624e6e8d939d0d"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.6/nitro-linux-x64.tar.gz"
      sha256 "b0bc20c2809e1acf63122a78d3613a5668d2721371019d7d84b3b40e5a3f2a11"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
