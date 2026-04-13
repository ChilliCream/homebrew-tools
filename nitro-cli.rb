class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.2/nitro-osx-arm64.zip"
      sha256 "27864e511476c9b915bc896b2882287b02c8e75756fb5168bf4e33361af5bc43"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.2/nitro-osx-x64.zip"
      sha256 "415853dbe019e70f461d3b0ffc16076baa883a8e5cf283e90c6aec91357f94a7"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
