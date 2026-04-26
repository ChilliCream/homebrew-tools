class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.41/nitro-osx-arm64.zip"
      sha256 "c7b669ca9d1232549e48e75e01736ede3120072f3fe8ffe309e2ae7a44e2c5d4"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.41/nitro-osx-x64.zip"
      sha256 "efe278b401752bce4f0afaf746b40348b3d8cfd5d2041b2bd7be3da2042658ea"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
