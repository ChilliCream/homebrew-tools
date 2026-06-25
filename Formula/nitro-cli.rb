class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.3.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.3.0/nitro-osx-arm64.zip"
      sha256 "925e3a93d538afd323ecac550d430388697a1c0612f25299f401afde5b0bb583"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.3.0/nitro-osx-x64.zip"
      sha256 "b35c3fe18329f89844fa87973231b088f7068364ae93e4c3dabb92954334543c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.3.0/nitro-linux-arm64.tar.gz"
      sha256 "fbb65b09cc5f388297bb535944081191123ef81375e1395c37d0d2efc09ad777"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.3.0/nitro-linux-x64.tar.gz"
      sha256 "8424d3f31231b04c175cd6ae2582475e18db614b9656cecbd5e601d23dac120b"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
