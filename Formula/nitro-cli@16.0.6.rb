class NitroCliAT1606 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.6/nitro-osx-arm64.zip"
      sha256 "66195d78d87b49955346e5016b138590376a1d75ec8343dd484f2cd6335a9169"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.6/nitro-osx-x64.zip"
      sha256 "dd3cdbf0040c65f376c7101e35ee8b66a54603c3995da6bc2e315aa67a48a89c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.6/nitro-linux-arm64.tar.gz"
      sha256 "f7d70942bfb9a3434fa941bcea83d26684686cf8d5692aad46f9c7945d421269"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.6/nitro-linux-x64.tar.gz"
      sha256 "fdf3aa67ac65a277d6aeeabbff31d951cfcb3ae240585af9b9a7be5ee7d3e1dc"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
