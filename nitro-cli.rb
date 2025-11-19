class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.19/nitro-osx-arm64.zip"
      sha256 "c0ddc2e72e40fb4b1aba5087f015613335af5fa4cc80d27a5566127cbdaf6ae6"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.19/nitro-osx-x64.zip"
      sha256 "956713e39db6536b3edb3866f747bbc460b51dbafa94dd787fc5d02a5a5887d3"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
