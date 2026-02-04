class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.40/nitro-osx-arm64.zip"
      sha256 "8cd9da4a445c7b7126a2e49d5e00121cd9a691f8197a6ce56f7a0476abeafe9f"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.40/nitro-osx-x64.zip"
      sha256 "e74ce39bbc897812a6d5c62ed1b91d59285dc01080796a835e43ede80814b045"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
