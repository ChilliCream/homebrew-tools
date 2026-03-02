class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.23/nitro-osx-arm64.zip"
      sha256 "b703829ce7b64c569bd962f1672f0d9a3cae50d73fb17e1459cf3267b813d0db"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.23/nitro-osx-x64.zip"
      sha256 "7fb4e29803f05eed782208322638331ea3f76324093a68258660e002a4af0b48"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
