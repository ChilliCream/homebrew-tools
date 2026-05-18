class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.4-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.4-p.1/nitro-osx-arm64.zip"
      sha256 "c8938cae9b5122983f644e99f4cd84eed61f60d1af84d4d421f333bd10dbe92d"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.4-p.1/nitro-osx-x64.zip"
      sha256 "e1d9c1b25ac914a2e99a0c3627b03d2e529422bce9ba7b4a2282c9548d30a18e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.4-p.1/nitro-linux-arm64.tar.gz"
      sha256 "1ffaa21852e9cd07723e08b55aa5da56e9fd50d94f7690012d29be0caae286e1"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.4-p.1/nitro-linux-x64.tar.gz"
      sha256 "5feaa95a8961c242c81a1e0f2dfe0ae5fa05ba76eb3706886374d2b1337b77e1"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
