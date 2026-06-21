class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.2.3-p.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3-p.2/nitro-osx-arm64.zip"
      sha256 "0ac201d65b9b5353e10e7ebb865b2f5d05111719279c3938dd049b2c70f0d687"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3-p.2/nitro-osx-x64.zip"
      sha256 "b8b9868f2bb427f49c30b2a1cfbf0d2343ee9ea37288e605d57176eaed309da0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3-p.2/nitro-linux-arm64.tar.gz"
      sha256 "2e4b0d043f794b49aca0d61334da2c6da3d9c5eda195294eb7f319d06d952b90"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3-p.2/nitro-linux-x64.tar.gz"
      sha256 "0d40af1f596f4154b04ac1f1fc9fbd8b22cf026ebb1f9a716cfba10e8ea94858"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
