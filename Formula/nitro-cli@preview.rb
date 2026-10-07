class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.21/nitro-osx-arm64.zip"
      sha256 "78d3efef9d12c8afd2982c3b062864284602f85af9ede2c24f71b44ec6ed3da3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.21/nitro-osx-x64.zip"
      sha256 "b5cf06024a532b97eb6a5e77723b7508d1c993bba25b70b671280787787d5edc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.21/nitro-linux-arm64.tar.gz"
      sha256 "f80059d6c785da882873d57ea482c39ca9155ecbac7e5c0354c9d3e6d51f30a3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.21/nitro-linux-x64.tar.gz"
      sha256 "9a1bd2b8123f639d61c313ece932df77d862b69a67f7d0a4ac72d7972efe0210"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
