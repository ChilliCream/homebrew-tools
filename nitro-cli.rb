class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.33/nitro-osx-arm64.zip"
      sha256 "eb65c61c9837d21a5ebedd2baf18c3c11d37b07ac2a0149395d1de268dbee044"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.33/nitro-osx-x64.zip"
      sha256 "22bd99affa50339d4f6c12ff5f4ac906f45303d689c0436ab1e392b388501c59"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
