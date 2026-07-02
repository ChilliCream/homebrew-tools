class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.4.0-p.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.14/nitro-osx-arm64.zip"
      sha256 "cc23242ffb572d1a5b6a5ad24268f2f6423a81f2c87bb110b6095b71ea101606"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.14/nitro-osx-x64.zip"
      sha256 "72767221b9735e281fea917ac49f765d60d337a5b2153de4e3caa7e495087cab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.14/nitro-linux-arm64.tar.gz"
      sha256 "652d886dfac52e5544e5cf8c277e1dbbfc6a491fc75153a3392745ca86b280bb"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.14/nitro-linux-x64.tar.gz"
      sha256 "5fa6344346ebccbc70d907c45acd7af6f4c5888970a8b17b9f1e297d057300bc"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
