class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.4/nitro-osx-arm64.zip"
      sha256 "3d9daafc4330a167a92e34905e68d98bcefd6c9091bedd60524449f944fd32c9"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.4/nitro-osx-x64.zip"
      sha256 "fbca6a0cd411761f36c6740eadc598cac9a75ba9e32ae05b77d3715f7ea05dbb"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
