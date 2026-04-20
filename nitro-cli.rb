class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.37/nitro-osx-arm64.zip"
      sha256 "669c7cf48db26ac95a70d178bbf7ec5aae803b2cb2e289e2a0f2f613848f3f50"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.37/nitro-osx-x64.zip"
      sha256 "7b5384646abbd47dafc97274c58e1a5782835c2a02fe20cd019289609fd24500"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
