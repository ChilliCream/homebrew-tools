class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.38/nitro-osx-arm64.zip"
      sha256 "373eb9e9362d0653668a4636b2c17a6a17e9d008097259c357a575ac665502d5"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.38/nitro-osx-x64.zip"
      sha256 "ab4a2216ce4deaa526376d7c5175099ac29acd73a35f3f347438441578b4fcec"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
