class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.2/nitro-osx-arm64.zip"
      sha256 "efd0fdd4f8ec561e4c633b9916706bf0d35a60ea796d9b2d89735f007f53fe73"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.2/nitro-osx-x64.zip"
      sha256 "e60f2e47c7c40cdcd0e7feef68a2925084fcb05b697a10b52e1411fcd20bba4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.2/nitro-linux-arm64.tar.gz"
      sha256 "d5be7c8bed29af945700a5c9d5713d3caf2226548d954e59001f79ec91236154"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.2/nitro-linux-x64.tar.gz"
      sha256 "d83f4e8191cc39eb77e195ad3e0e2c9896b9491360ba6a2de9b827422dfdfbf8"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
