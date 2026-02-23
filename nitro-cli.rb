class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.12/nitro-osx-arm64.zip"
      sha256 "6cfb32faf0a3e13d396cfd1d84214ab5507be0daf84b0d6189f0fb2cf0ca05a2"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.12/nitro-osx-x64.zip"
      sha256 "f7a3af4dbc5c11a5aa053906e04ef19cec3014429c7f000c02f12d770b031e9f"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
