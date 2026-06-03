class NitroCliAT16 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_releases
    regex(/^(16\.\d+\.\d+)$/)
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0/nitro-osx-arm64.zip"
      sha256 "24876b7608c45cf070a74f5b9e4171c348f49e827685914a127ab0db0348eaa9"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0/nitro-osx-x64.zip"
      sha256 "2ddd347de85e1a5bd3bea955f5bd804174750d67e213c238847d3421f55fd9cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0/nitro-linux-arm64.tar.gz"
      sha256 "355222917ea4cd617bd3dabc7de738315f75ed604d0aea7aac739262e80d53d0"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0/nitro-linux-x64.tar.gz"
      sha256 "2ff44f476d898a0935aca321f8bcc67dcfffceff769e61d04bd681156ff29b54"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
