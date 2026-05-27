class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.10-p.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.6/nitro-osx-arm64.zip"
      sha256 "99eaf3096c26e229c192a9f554c064aff3d77ce4433dd0106326747a7c080580"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.6/nitro-osx-x64.zip"
      sha256 "af4fd242b0873f1836c08048f5fc9fb894e10d4536abc7bd4a02a328524b1696"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.6/nitro-linux-arm64.tar.gz"
      sha256 "f3ea6886e55b8b68b30d590b91843f202980142c6079ceaf4bf16f28ba0b5c0f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.6/nitro-linux-x64.tar.gz"
      sha256 "681627c7a22c9ce252634d039f9140c6dbee875cc2a6ae512dbe1c731c4e9bd2"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
