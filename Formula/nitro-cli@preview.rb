class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.5.0-p.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.7/nitro-osx-arm64.zip"
      sha256 "60831cb42cbb4068a0de5cea78f55229642a9845501ecf5caec438512f6b4891"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.7/nitro-osx-x64.zip"
      sha256 "97312651af75918a38fa88134c5cd5a0e68fcc962b4da3d98d5a24a5136514fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.7/nitro-linux-arm64.tar.gz"
      sha256 "039fa3328e6a49dafdd55855e7b562f10616dddabe844950cef34e2530d4a63b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.7/nitro-linux-x64.tar.gz"
      sha256 "28c5640064770ff2c3e14e3f21a7c4f497c7742944e0045e0c4c61ae76017835"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
