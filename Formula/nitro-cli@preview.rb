class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.3/nitro-osx-arm64.zip"
      sha256 "5e3d94b0cc9bc6ad645b197276fa84208ae7785cb189fb859859ae329acea0d3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.3/nitro-osx-x64.zip"
      sha256 "f8a748e6838bff9e651ec0cf9621a9d7d997d6c7661b8ea721e3e1632af5c398"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.3/nitro-linux-arm64.tar.gz"
      sha256 "80032e3ecc6798fe1fb43af8733b29c256bcd61c2cfee89f3ee0f2d73a3985da"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.3/nitro-linux-x64.tar.gz"
      sha256 "13d13d09f1b40a134c2e149ac3206585a94d9328e6684d0c7ac3146dbcec42e8"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
