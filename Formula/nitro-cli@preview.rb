class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.13/nitro-osx-arm64.zip"
      sha256 "01995dd24c918906858bfdc953a7e21bf890920ab833f7108719ed432c3ea4d4"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.13/nitro-osx-x64.zip"
      sha256 "5968a359fd4a055f6b62fbdc3dd80b76bcaeeafa66c479cd4b0076e54de52c43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.13/nitro-linux-arm64.tar.gz"
      sha256 "2c6c4adce22e6cddfe62a06e62b801ba99c120364182f3a777bc7dcc74845f64"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.13/nitro-linux-x64.tar.gz"
      sha256 "614e87c597bdfd19050501eb5922b341ecd27437ce410658bf46170593b49ba1"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
