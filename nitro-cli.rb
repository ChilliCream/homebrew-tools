class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.16/nitro-osx-arm64.zip"
      sha256 "9c074841a00156827ef1b531c589b90bda92968776b498cf2b1f78b6e0ad9ad3"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.16/nitro-osx-x64.zip"
      sha256 "c3951ec669733c79c6721da951637e1e97dac373eade8bfbaa0f2b59e8621bee"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
