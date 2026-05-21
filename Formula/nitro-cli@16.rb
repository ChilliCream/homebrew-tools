class NitroCliAT16 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.8"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_releases
    regex(/^(16\.\d+\.\d+)$/)
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.8/nitro-osx-arm64.zip"
      sha256 "132e5a596c37f7a6a513134d13231b68c09f77eacd02341fd04cd1d774b95407"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.8/nitro-osx-x64.zip"
      sha256 "36b2b84deb2410cb81c1803d02284754f5e1adc4503159bb60a6c95cbe70da30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.8/nitro-linux-arm64.tar.gz"
      sha256 "64525efbfdd2e2db4014a23cdcb47b6e3de1409dd68fa041ac8ab4ccabd6d056"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.8/nitro-linux-x64.tar.gz"
      sha256 "0c8ae3f180f2672c88ed8aebe1ddf177329f4568701c5c9777debedea306956e"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
