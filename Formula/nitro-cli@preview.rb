class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.20/nitro-osx-arm64.zip"
      sha256 "a5d61e7f293e5e24664e23e49775319629c534def7bb527e77184f27fd74c0d3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.20/nitro-osx-x64.zip"
      sha256 "3abee438d00335200f4acf968a3a0741ddbe36619d039ea466762ddd71b51199"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.20/nitro-linux-arm64.tar.gz"
      sha256 "080e3ad58e1ae9e71d7a30bd92a01ed71c14d5b5762f1879d03978fb66b02c7c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.20/nitro-linux-x64.tar.gz"
      sha256 "bab8d6b6c13dc3f4ae93365679f278877be88481c2047bc0c723d03b10293018"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
