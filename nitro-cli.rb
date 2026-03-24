class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.7/nitro-osx-arm64.zip"
      sha256 "6f81988189fc6057428cba744227aae116e1d3aa8771e40f13852cea97e38192"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.7/nitro-osx-x64.zip"
      sha256 "0bdc8e3680ba642aa1a8c13f3b4d61ef8987fdeddc5e9f2b9019e8e0fdc32452"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
