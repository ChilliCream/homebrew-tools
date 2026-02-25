class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.15/nitro-osx-arm64.zip"
      sha256 "effe2d8dc39fb8a64beb3356b6f2ba8c13658ba134a7ec78fc3478b3065dda0b"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.15/nitro-osx-x64.zip"
      sha256 "ea731f941f8c8e6b57ce0538d0a9fe48b24031684dc34078c9c2224b7ad55814"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
