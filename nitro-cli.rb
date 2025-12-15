class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.19/nitro-osx-arm64.zip"
      sha256 "bef140a1a96994029153dca8c00b1750b9a5a764fb9db2dc68d7bb40e8a29e8a"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.19/nitro-osx-x64.zip"
      sha256 "b116c2964161ae408aaccd3429ceb3cb26794c0f3e4a3b151556346c0005451e"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
