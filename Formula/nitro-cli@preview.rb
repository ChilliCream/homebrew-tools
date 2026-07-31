class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.12/nitro-osx-arm64.zip"
      sha256 "4c3ac84f1ecb04246aa6dcbd6f9b9db3b21cb2895496f1e8ca6ebc9fab7feeea"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.12/nitro-osx-x64.zip"
      sha256 "57cc0af8d9e929cc0d254a793557e7132255f39f41ae3a6bdb3dc8183c39d894"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.12/nitro-linux-arm64.tar.gz"
      sha256 "d55e90630de442d3a543de2c5cea34e9e65734e4a7edf717f8b6d9b4646645d3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.12/nitro-linux-x64.tar.gz"
      sha256 "1837b4779155409715d8b5f4fe54ac880aa1c47c6659e564fc6f7e7998f526fc"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
