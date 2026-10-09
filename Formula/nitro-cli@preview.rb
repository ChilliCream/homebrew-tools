class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.24/nitro-osx-arm64.zip"
      sha256 "d32d8e75992895d142710ec441ae4f2093c88f5473c4712a8b70aa0165711839"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.24/nitro-osx-x64.zip"
      sha256 "50aeb6ce9e865623af182b48dec22ec88d24c8fe4f08c0c5426e9099ece244fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.24/nitro-linux-arm64.tar.gz"
      sha256 "e37204985faa3402fbbd62630ce588ddab72de68a6436755838600cccddfd30a"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.24/nitro-linux-x64.tar.gz"
      sha256 "47d6642ad126c4b458abb02621770b95f9fb9804b231e382256de04dd9f5b384"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
