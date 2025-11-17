class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.13/nitro-osx-arm64.zip"
      sha256 "401ff35e39c37fb2e236728c914244eef166a69696d8ce0284661f50f83eb10f"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.9.13/nitro-osx-x64.zip"
      sha256 "77f5fceeea03cd39ee3beee732b23d93ab164b3416b12bef3ff2f14bda67f020"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
