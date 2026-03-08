class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.33/nitro-osx-arm64.zip"
      sha256 "b326ca9af4d5a5e3b58b58483ebac76a32f893ea4db6fb471f0787e610542ff4"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.33/nitro-osx-x64.zip"
      sha256 "590972065a629af1350070c99ded75c0326a02fb3a44a448a44d12141d99d05c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
