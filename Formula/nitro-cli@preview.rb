class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.14-p.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.14-p.2/nitro-osx-arm64.zip"
      sha256 "1dcff5e66aac11fab9ec245136728f8354e92ea383d3a88ccab01e5b2c6bf954"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.14-p.2/nitro-osx-x64.zip"
      sha256 "eb6b15197e2c3e8cf72806ccc27ff80952f8455136afebefed32250fe3ded4ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.14-p.2/nitro-linux-arm64.tar.gz"
      sha256 "ba013f404d4b3dfa8a8b921486075515d0f32ab8e5736da61322137ef42ebc0e"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.14-p.2/nitro-linux-x64.tar.gz"
      sha256 "d16a074eb9f92c5018569c28ec7733cf04468f8feb218f2343d88d2db068fe06"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
