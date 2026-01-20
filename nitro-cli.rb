class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.32/nitro-osx-arm64.zip"
      sha256 "978441042bf57b64a3a0029d372a5b419343c03affcaba76652af9f7766d9b9d"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.32/nitro-osx-x64.zip"
      sha256 "7f4a14bef55c2d70aac6723b3ff27286a1550fcabc5d284113632cf6407668f7"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
