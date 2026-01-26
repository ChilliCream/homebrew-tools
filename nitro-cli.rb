class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.34/nitro-osx-arm64.zip"
      sha256 "d6beca448542c016514cea19cdb55c01da7c424dc805aae89f9541716b8d6cc9"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.34/nitro-osx-x64.zip"
      sha256 "c8472608aabee6cb4f26867d826ef6e39dcd6cf604a01b0c57a4e57847b08044"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
