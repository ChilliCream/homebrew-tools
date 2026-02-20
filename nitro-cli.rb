class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.10/nitro-osx-arm64.zip"
      sha256 "207f5020363305646d45382f16eaea4871ad0c325ed3f7193a38eaecb4ddb33c"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.10/nitro-osx-x64.zip"
      sha256 "f20654f6b041af85449878a74f2256a6cc00ac2a09ec9290059226606bd0353c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
