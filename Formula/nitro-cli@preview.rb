class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.2.3-p.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3-p.3/nitro-osx-arm64.zip"
      sha256 "402f9def0cca098fba2c5acf8a7bb6b81d97772ec11d518ad9b35052afd92d1f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3-p.3/nitro-osx-x64.zip"
      sha256 "66a41cff27015a0c06309f842bd897d1f700dac003307379449c6b922f92f7c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3-p.3/nitro-linux-arm64.tar.gz"
      sha256 "121b85c7e08f69f1af25c2612d1548d7c6d2785500acd836d46cd413c4c20a08"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3-p.3/nitro-linux-x64.tar.gz"
      sha256 "ad7cd3163147645e1a933c0c4375326716787c911b22801573b337108f0aae46"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
