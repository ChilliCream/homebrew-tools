class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.64/nitro-osx-arm64.zip"
      sha256 "fd60e71d1078e8ea75a45cd68966a45043b2495595e518453f5711fc9a8e105d"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.64/nitro-osx-x64.zip"
      sha256 "3400a78369559d5b10dbb001c3f0e8f56fa22d0a07574584ddde6a1f5ee45ae5"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
