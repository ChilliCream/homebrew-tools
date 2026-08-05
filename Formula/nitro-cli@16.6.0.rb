class NitroCliAT1660 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0/nitro-osx-arm64.zip"
      sha256 "7886471ddd487439905e5d7a3334d50532c2faf0ac7b396724eb58724fe852e5"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0/nitro-osx-x64.zip"
      sha256 "8c5476aafabe4cd7961beb97bf4ae0bdaec2268894c755f58c1ff71f1e2e7f18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0/nitro-linux-arm64.tar.gz"
      sha256 "b2a137b9292081f92bfe80cb2dcb2983002d4e4386d4ff08ec043e52473b0551"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0/nitro-linux-x64.tar.gz"
      sha256 "0b80f92943336fa26184502e998e3f5673ba8d0c00843ec4b288bc4fa45522fc"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
