class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.1/nitro-osx-arm64.zip"
      sha256 "04e19b79c66b74e341b1f0c2aaec3379c5c24cbdf88aa52ef82b9019f5fb86a5"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.1/nitro-osx-x64.zip"
      sha256 "e3ce3b58f9752f914d43e940e6f908130cda905da74f6091226e22ee537a395a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.1/nitro-linux-arm64.tar.gz"
      sha256 "1663dfaa704d691dc544e3421d1b29a2807bcceff9c0b3ce89a866e55246298c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.1/nitro-linux-x64.tar.gz"
      sha256 "ffaaaf14bf65701659068d566665bcbad6e1eb10902cd0c533e63bde8894e02a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
