class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.25/nitro-osx-arm64.zip"
      sha256 "0bf7e19be4bcd2c5ca7e1be95600deaa52b53645d1e840bd925c1cc7f9781909"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.25/nitro-osx-x64.zip"
      sha256 "b5b6fe7b1b0b838ff725bfc1bbb1f3fe7a9ff81ef644ca87356b1c952b137760"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
