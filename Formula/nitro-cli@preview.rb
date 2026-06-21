class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.2.3-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3-p.1/nitro-osx-arm64.zip"
      sha256 "39ad96e787a54a5659b485eaa3294c8fb812fe7b86b7649e2d82a152e6c52e2e"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3-p.1/nitro-osx-x64.zip"
      sha256 "51f1054311cc047b1a62f0791a0ec308276688f35406bba79e143df09c5b6978"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3-p.1/nitro-linux-arm64.tar.gz"
      sha256 "f513526d3aefc0e8b6e8a354e0cad00c49c5c3872f612ab91321228d0c10d8d9"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3-p.1/nitro-linux-x64.tar.gz"
      sha256 "be753bf18b631424f881fca9672349dbe60d2959dc25b9b9c490ecbf0b3180d5"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
