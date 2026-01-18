class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.30/nitro-osx-arm64.zip"
      sha256 "3b8fcbebccd95f6d58bb4ea03a14c6be9de841b356a9149e33da7ebc81c7172e"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.30/nitro-osx-x64.zip"
      sha256 "1f7de2e276c6a58c2e6e2812273b95e4508af7bb3ee129a0bb6a8848c90f2e38"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
