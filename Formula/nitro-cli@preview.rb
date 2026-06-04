class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.2-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.2-p.1/nitro-osx-arm64.zip"
      sha256 "5b4cc1730205b58f34c1a6f1a56eb9929ed46de6978ec2ec77a8bd2b8383ade3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.2-p.1/nitro-osx-x64.zip"
      sha256 "8f9a5d22132327b7e7283a928c50fff57b2e63aef6e66b2f9a898de04f2b4733"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.2-p.1/nitro-linux-arm64.tar.gz"
      sha256 "d9f04530a244d5206d53467aaf412ca2dcc4b6bfa7100794d897f59e3e11cccb"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.2-p.1/nitro-linux-x64.tar.gz"
      sha256 "b9b71cff060115c165f3ea698333ecea4d4cc6714dceadd1c57c54141c17baf6"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
