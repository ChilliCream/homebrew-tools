class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.7/nitro-osx-arm64.zip"
      sha256 "c01cf96a0817e431a35f3ca34f158ed5c6b2ec741d288ea38d136fefe9bf3992"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.7/nitro-osx-x64.zip"
      sha256 "680caf01b8d00d07237a3f385ebb7aed1bcbd25cdd8d6b1484903f2df4989a00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.7/nitro-linux-arm64.tar.gz"
      sha256 "3b6d30f700cbc24da932a05b795b0fb9390105de7c0b52fd3ed4ac2ab73633ec"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.7/nitro-linux-x64.tar.gz"
      sha256 "7ff757d2f7faee0487c00936c777bb71fd79aa10151ef49b66dca1d55126d9c3"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
