class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.5-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.5-p.1/nitro-osx-arm64.zip"
      sha256 "a3d5f880d3f639e88bb73ba63fcec0b53a7898d8ac8f1829777ddd3706ee64de"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.5-p.1/nitro-osx-x64.zip"
      sha256 "1381015b57a339a840e2771ceb79f2ad1a20a3f90ee57824a9d9f974f31d8be9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.5-p.1/nitro-linux-arm64.tar.gz"
      sha256 "d288584132827ad63d4f45affb9fb615d7ca757d62548b1a6d4207de2a1f3eca"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.5-p.1/nitro-linux-x64.tar.gz"
      sha256 "b43f29b2e9a827f8b652f921056b223db3792e6befbb00e4e9beea598411d74b"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
