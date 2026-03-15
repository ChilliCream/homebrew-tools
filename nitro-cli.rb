class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.43/nitro-osx-arm64.zip"
      sha256 "5e4637efd702092c44dd201a701161039188501a5dd1d8c2bd72f467a6f3e9dd"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.43/nitro-osx-x64.zip"
      sha256 "bb04b766cae09b0bcdee40643b57d21002d75cf4cf5dd8c7dad5c2982d913cf4"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
