class NitroCliAT1607 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.7/nitro-osx-arm64.zip"
      sha256 "86c7e31ec775f3095e5853b59cae0fbf327410ebc76d603a1120853120624433"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.7/nitro-osx-x64.zip"
      sha256 "c12110ae6e9e32e9b93f5b9f7f5fdbaf9661f57cedc6e858a893eb6efbf446c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.7/nitro-linux-arm64.tar.gz"
      sha256 "9721efc1ae2d7390764ed9a9d129b0b055fbd23ce5514fe9a48a20f8cea0148c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.7/nitro-linux-x64.tar.gz"
      sha256 "3030306753892676ec0db0737b858803e801308120ab79830ab0856de8fc19ac"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
