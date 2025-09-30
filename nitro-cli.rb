class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8.7/nitro-osx-arm64.zip"
      sha256 "5dc1e9cd1d1249cfc7a1870b7a2c0a7d62dd2d12e76620578f0fb9182cea56b0"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8.7/nitro-osx-x64.zip"
      sha256 "2f70de697d79c80746f504eeefc342f218af02348715560095d46baf8a7f260f"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
