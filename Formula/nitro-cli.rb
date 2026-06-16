class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4/nitro-osx-arm64.zip"
      sha256 "a8966da8f4a69962d23502ba4348bc7949ef0211286982979a85eb14e7ec2e62"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4/nitro-osx-x64.zip"
      sha256 "d4c29fb62894e50ee71eb9f0de53667080776f820a6ff5b554b4316f87add630"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4/nitro-linux-arm64.tar.gz"
      sha256 "0b7cf141eb0bcdbe399122a0c6907b4ef8a7d54f55f0170b3c32142fe3b907ac"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4/nitro-linux-x64.tar.gz"
      sha256 "4770f495ad17ea672a674996dc4f4ee4d0d7413d7599820096e5d7d6a2a13c9e"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
