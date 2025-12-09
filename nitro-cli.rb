class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.16/nitro-osx-arm64.zip"
      sha256 "a9850bc3795d45135d5de0c91910b32cae85733c074b8fe6d8019111dfe061bf"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.16/nitro-osx-x64.zip"
      sha256 "b39f637f3ff13dcf6c451c491b84764bacb56578a048ce51f6fb843386978e62"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
