class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.56/nitro-osx-arm64.zip"
      sha256 "a39b478dcd4b3233acabc1880c671e27c9a7a2cf9f2e2e13b12356b5783162b7"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.56/nitro-osx-x64.zip"
      sha256 "09ced467dc39343c7dea244885958001e7ffe085e3cfd668e878d4f7295cc7ca"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
