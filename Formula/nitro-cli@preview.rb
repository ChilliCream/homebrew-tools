class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.16/nitro-osx-arm64.zip"
      sha256 "99d350e3434c294f4a3c59686d816a3bf6bf305c598720807ecda9fc497cc367"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.16/nitro-osx-x64.zip"
      sha256 "46681e8cd6453a748717576d07c3a9acf3abc9d18a2563ddaa3e3cc8ef7130fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.16/nitro-linux-arm64.tar.gz"
      sha256 "253306a7954839d5fe7499abbb9905fa23421df132ae77f81627d3912b9edb75"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.16/nitro-linux-x64.tar.gz"
      sha256 "308f5f9d8bd5aada21b9162090aa984530e14f34352cbae8dd6187be55b2d3c7"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
