class NitroCliAT16 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.7"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_releases
    regex(/^(16\.\d+\.\d+)$/)
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.7/nitro-osx-arm64.zip"
      sha256 "24651079b5f14b851326c7abe23c28fffc12858b8dd66987f74b7631fd084f08"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.7/nitro-osx-x64.zip"
      sha256 "a9023066e4538be83af6bf627abfc9557426042226906da62a22b228deaab705"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.7/nitro-linux-arm64.tar.gz"
      sha256 "44ead7a9a4def8b9fe38d4a681b81bbc3e42234d519365ecb0a579a535720172"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.7/nitro-linux-x64.tar.gz"
      sha256 "514547f4fb188c70a91520e0fefd694d4e7baa1e16e43bd992fdb0038b45e9d6"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
