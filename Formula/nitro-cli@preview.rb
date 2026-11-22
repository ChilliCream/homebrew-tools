class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.19/nitro-osx-arm64.zip"
      sha256 "09e6741de81171b7290f779bed736b9902da3c9593ab4242ac236e77cb2f99fe"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.19/nitro-osx-x64.zip"
      sha256 "f5437a1d3d66a1c3c3908dfae77b88afab23763ccebca989f34b07f616c84f9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.19/nitro-linux-arm64.tar.gz"
      sha256 "12f92826145b4b787220445063c691d0589c0e9dabc4d56af31f4ef9ee916232"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.19/nitro-linux-x64.tar.gz"
      sha256 "36526e1467b68a6df0177639e9c798391eedf0d69ba4a0b5d5b4ef294f8b73b1"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
