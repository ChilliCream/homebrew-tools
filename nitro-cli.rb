class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.8/nitro-osx-arm64.zip"
      sha256 "d4fdee4718e6f4fe1a92f2b9401ad3d10a7670bc06c8dadf78dd6a695c4517f2"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.8/nitro-osx-x64.zip"
      sha256 "218fee6f6853bb366c1d087ad7b768c4fe7957d0a50d4901d36094672f45eb85"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
