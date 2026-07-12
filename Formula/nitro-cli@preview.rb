class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.5.0-p.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.18/nitro-osx-arm64.zip"
      sha256 "cf1f695445b00eb1bbe252e4d24f647dd3154cf661eb958a67ccdf9fe0ad1be9"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.18/nitro-osx-x64.zip"
      sha256 "af18345734e86b98baf2bcb06e07d133819f41539708cba03c77cc1b66eea172"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.18/nitro-linux-arm64.tar.gz"
      sha256 "0b5a810c57823f65c01fc497d32695740c27f0ada63d213c85d546b3fa1f30b3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.18/nitro-linux-x64.tar.gz"
      sha256 "b23d1e2bd24511adaaff1a97f0d1f4d09c97843bfeeca4fafad5f8a68746119f"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
