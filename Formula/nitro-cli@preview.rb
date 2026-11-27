class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.24/nitro-osx-arm64.zip"
      sha256 "0198b535fd5493f2708a67cca42c3927aeecb7001b9a492c1a192d76c37c8c91"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.24/nitro-osx-x64.zip"
      sha256 "98fbc0b6425f1044c64d4fdca0162e0558f28d7f967fb47135a579ab571268e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.24/nitro-linux-arm64.tar.gz"
      sha256 "04336c5a74191e5599b8625db8dcf966f195d71cec47ce0536708048c9d4e50a"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.24/nitro-linux-x64.tar.gz"
      sha256 "f1a59c4e66fa606391de0e27cf27df7ffa4a10253cc26aef92f56a63775c5d5b"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
