class Nitro < Formula
  desc "ChilliCream Nitro CommandLine"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.46/nitro-osx-arm64.zip"
      sha256 "c96be782e120b5a28c385265dd7e12e99d575d1e9636b0ff462508477b2ac750"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.46/nitro-osx-x64.zip"
      sha256 "c372e1d23954042e80fb6ff5d9064eb6b9dcebdecbec0817357c9919710af103"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
