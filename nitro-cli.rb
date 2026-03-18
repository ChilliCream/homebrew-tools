class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.49/nitro-osx-arm64.zip"
      sha256 "be07dfb3a44edf7e6c5ca6d5b02bffd09d82b3818f89d76e82f4e6ef035b000b"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.49/nitro-osx-x64.zip"
      sha256 "1b37b49e44467ceaf3c4f85e3f154e50b067de8428eb5ab9ba0726f6c43bb69e"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
