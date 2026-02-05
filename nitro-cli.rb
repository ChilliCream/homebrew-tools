class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.41/nitro-osx-arm64.zip"
      sha256 "609d02f94c183cc2495c41001754bc7c42e79d697d1937704009f40176777312"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.41/nitro-osx-x64.zip"
      sha256 "1e2e59a52fa41c1251888aaed786ec61ed5b47418dce7d0e18e3c95e02311fd5"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
