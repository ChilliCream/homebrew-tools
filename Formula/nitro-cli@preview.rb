class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.10/nitro-osx-arm64.zip"
      sha256 "6ee991a2ab5151745559f4a3c6f6107e73ccb672308b25508311029a5676b999"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.10/nitro-osx-x64.zip"
      sha256 "fbb154e75904d240556eb7e2c16cc8965be1c5e0868fdc186ad1cc6b1c7dcbc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.10/nitro-linux-arm64.tar.gz"
      sha256 "d3ecc59e8fc57947ac266562d813c8c98c08bc195cb2a56c4425be1feaad48c0"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.10/nitro-linux-x64.tar.gz"
      sha256 "603dace102b36f2585f97da01c11e0f5d808d3cd0402ab81f374a2aeefd4ba7c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
