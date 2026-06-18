class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.2.0-p.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.0-p.5/nitro-osx-arm64.zip"
      sha256 "81bc859d1f8bb12c31035af4a34113e4ed00b9c238772d1360c81f38f67d0327"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.0-p.5/nitro-osx-x64.zip"
      sha256 "92ca73b5272ac0c8b0282d2aba7975fd3a81b4f635260208a34afc075a13a506"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.0-p.5/nitro-linux-arm64.tar.gz"
      sha256 "ca8a58963d431921956a91835ddb1c03291eace72a40886de9af998554bec250"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.0-p.5/nitro-linux-x64.tar.gz"
      sha256 "da0503211e93af76ab5e9a71d585d4c064c303f0305f39ab7d59ab540e42f460"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
