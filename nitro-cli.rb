class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.35/nitro-osx-arm64.zip"
      sha256 "512e604abedce8a3bdafc1d6ca6e4051a0bdbcb46f373c6869af4d4bc79a4ade"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.35/nitro-osx-x64.zip"
      sha256 "7e95c1d8bae5004d7982e7ce809efb4790d145a4e7a3d04d48627621fe2663fc"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
