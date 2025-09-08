class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.67/nitro-osx-arm64.zip"
      sha256 "0a1ea7b7819bb1346824ca4463c6bc0e659c7adcaecbaa5375322ee27951875c"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.67/nitro-osx-x64.zip"
      sha256 "6387ebb017271f02c7d53a51fc195087e1ad5ced3ffdfb9e1830b4d5a590c6ad"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
