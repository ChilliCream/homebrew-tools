class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.1-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.1-p.1/nitro-osx-arm64.zip"
      sha256 "4e87bcff9aa113a4773c05836327aa517629d4517ed2b67f5ad6cde6d4b3b44f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.1-p.1/nitro-osx-x64.zip"
      sha256 "880264a8e5ddf80aa77ce3f6cb693b8866e91773261c5f601e8b7a5b67a268f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.1-p.1/nitro-linux-arm64.tar.gz"
      sha256 "ef3f92c364717811d9aa8c2f4aa004f7632c2a2d88fa67a667db3c764d75223b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.1-p.1/nitro-linux-x64.tar.gz"
      sha256 "4dfb09c697893c2d81860425bd6f1e8ff61176afb944778845b461705729e084"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
