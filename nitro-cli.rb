class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.11/nitro-osx-arm64.zip"
      sha256 "eb7491d52fa4aafbcc910616864643da3e3d60ad8efa4d8870be7b61b68031f8"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.11/nitro-osx-x64.zip"
      sha256 "8042faf9a1c94f4251c4eb1c665eaf81839d696ed434ffc61b2f50c8c074c586"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
