class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.9/nitro-osx-arm64.zip"
      sha256 "da9791b501f925693a8da9a5956c743136c2f808389b859d05f9d84b6c789a17"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.9/nitro-osx-x64.zip"
      sha256 "9456c763e2c452e0f1d36c84821404357eb94e3a74a3f0bdf283ecb4f928551f"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
