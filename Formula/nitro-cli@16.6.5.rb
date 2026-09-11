class NitroCliAT1665 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.5/nitro-osx-arm64.zip"
      sha256 "a14fa5c0cc8371dde036726741b88fbdf0563a5956ca6598994e7e31daa257c8"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.5/nitro-osx-x64.zip"
      sha256 "1d75127d9e472a6b1891ae60cd064e56fff6986228d1d457dff9d373e503c7c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.5/nitro-linux-arm64.tar.gz"
      sha256 "b189e2d8792315db92d457598b651a544a7e630c0db4fe5cadda23f35cf2f201"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.5/nitro-linux-x64.tar.gz"
      sha256 "858990b2913b7da64ca5744b23c3f67276b4d14962bfdb43d76408713ed65ffc"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
