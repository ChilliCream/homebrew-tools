class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.7/nitro-osx-arm64.zip"
      sha256 "39085fcdf5557b5083a2278bca589250ff1881f99a3d539f3aa9e18543c7f554"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.7/nitro-osx-x64.zip"
      sha256 "525be076b183c1e4698001edf225af376feb437896320931b4fb67cb2823828a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
