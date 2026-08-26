class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.2-p.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.8/nitro-osx-arm64.zip"
      sha256 "f6127e9c0072725db40fb52eea522276703e6a6929329d3741cf5d561a6bb83a"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.8/nitro-osx-x64.zip"
      sha256 "e7a538165a0b45a1e2771c6f6b6a93231b227b1706e56c52a157a441c57dc970"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.8/nitro-linux-arm64.tar.gz"
      sha256 "9d7e87b76b8f4e12cc826a6983dfb41e49f6b9657652512cd35b8a02dff1c9b6"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.8/nitro-linux-x64.tar.gz"
      sha256 "65ce9c3aec9e06e00aa4fa47717d44cd90e915f30bb1559c471084a01c6f282a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
