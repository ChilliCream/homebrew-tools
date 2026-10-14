class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.27/nitro-osx-arm64.zip"
      sha256 "0c3f7d7d92103c9c6130ad6a0a654bd3b7aa0f6760fe251ac3f802fe377e1861"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.27/nitro-osx-x64.zip"
      sha256 "f4614d4d9470c980b4ab7e52af8974b8b97ff8bf7a560f5b365dd071c4931f7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.27/nitro-linux-arm64.tar.gz"
      sha256 "0ae9d0287db6295fb4f626069400e0be2eae3464c57c982a84aefa359fd98bf3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.27/nitro-linux-x64.tar.gz"
      sha256 "b82e50415a94143c63a43ef8d0784a7c3a541987b4dbf5a5605feb2c0c70525b"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
