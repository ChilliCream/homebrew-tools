class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.1-p.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.2/nitro-osx-arm64.zip"
      sha256 "3b1b2a9d560ac9ff9d29da6dec4c9d880ceb18594876f7be2078f91fc80ccfdd"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.2/nitro-osx-x64.zip"
      sha256 "d20dbdebbde4b211a49a190946c251508216c065c42abbe88c4cd62cc18d561b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.2/nitro-linux-arm64.tar.gz"
      sha256 "bb659ef6bca72aed5fb34a99d9928aa07a200ed1010cdd1abd08fdcc82bb5fda"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.2/nitro-linux-x64.tar.gz"
      sha256 "31c331173d69dab5a3cdbad7a3f1da5e8b151e18dd084b6e89fbdfbe912f94ee"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
