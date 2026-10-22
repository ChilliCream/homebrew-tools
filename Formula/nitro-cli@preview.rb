class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.33/nitro-osx-arm64.zip"
      sha256 "143fd970e2edf07346896fa61612f86da88654897a59c29dd6a25d20ad1972ae"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.33/nitro-osx-x64.zip"
      sha256 "ea5de71576171041033094f888bd0ebf5f8d86ae1e51c51e0f5ffb51230508d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.33/nitro-linux-arm64.tar.gz"
      sha256 "c3ff478180aa79989d41cbbd92359b3f4108f0d6d37f3a9642a41555109e1a04"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.33/nitro-linux-x64.tar.gz"
      sha256 "5a3a662f36d866f3263cb0c5118a792ded9f18ca274ed9ffd75ae2ffae501e16"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
