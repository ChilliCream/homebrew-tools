class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.1-p.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.1-p.3/nitro-osx-arm64.zip"
      sha256 "aaf0a0c5714ec6a181b0ea571c524047dede1277053f8cf54fc4c90e54b1e48c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.1-p.3/nitro-osx-x64.zip"
      sha256 "c1668d0b2bfbec3216899b2300a4a1e29b5735ba0eeb76a77d0246d1995432bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.1-p.3/nitro-linux-arm64.tar.gz"
      sha256 "a24ab62b4c78dfbf88df1b19822f2683905e5c4dcbdb2a8330d4eec7b5db9e0b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.1-p.3/nitro-linux-x64.tar.gz"
      sha256 "9fdbabc51e1a553a8bcdca09a43d14893d9c87cd1d25b3a65336a18040ba1746"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
