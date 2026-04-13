class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.30/nitro-osx-arm64.zip"
      sha256 "a83c38d392313fc780adabcc22a925936350ac6eb4f030e43432ed2e45bf88af"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.30/nitro-osx-x64.zip"
      sha256 "6d10b327b9c0314910b131052602def65f0abeefdd8290c1b3d04e28a949d105"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
