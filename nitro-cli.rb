class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.51/nitro-osx-arm64.zip"
      sha256 "e9dbe14aa542089bb765fc305664340ac0e252c9ff9361f888cd6e8211fcad1f"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.51/nitro-osx-x64.zip"
      sha256 "4a156f13f932f3b50db56ad223dd66b5017d426fe138f7eb9c10bf3a58dcffbf"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
