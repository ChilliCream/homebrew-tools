class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.68/nitro-osx-arm64.zip"
      sha256 "56b6de4b88561a21f6cddb7776664603d3cad82e9bfe6462535ae7057bfe6001"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.68/nitro-osx-x64.zip"
      sha256 "45fc8e84c5740a591802c63daef2edb5e1be28bc46fbed4c1a5ba5d4e677b9eb"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
