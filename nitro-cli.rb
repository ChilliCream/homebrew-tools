class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.53/nitro-osx-arm64.zip"
      sha256 "8588ee40f0c2d238772e3eb32abece7e44b3e5a22ffd4eba3225807dd57dd6be"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.53/nitro-osx-x64.zip"
      sha256 "76c039d39f0e6d063b47f958e5eb8ae711b2203537e2b580fe56b7036117ba7f"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
