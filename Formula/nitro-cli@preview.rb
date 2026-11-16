class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.15/nitro-osx-arm64.zip"
      sha256 "c4a6d435ceaf9afb4ce71f1cfcbfc4bb41a19e8577aeb619d594bd31c7fe5b58"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.15/nitro-osx-x64.zip"
      sha256 "16a4558948cb7eb6ddbd996d1f4d734c36133089490399899cbba7bb3cb2a03e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.15/nitro-linux-arm64.tar.gz"
      sha256 "5f67d538efe37f4e5c9ae4ecb73350a03902dc3063ba36481774220af125402b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.15/nitro-linux-x64.tar.gz"
      sha256 "1c2d713af44bd1fc92119febc4f56cc809bbde777c11d6162329ecce0e29917c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
