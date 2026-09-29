class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.15/nitro-osx-arm64.zip"
      sha256 "64d53bc9da63ab024f92cdff57a05811ff23987b58c6030d86a806cf9525f2b0"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.15/nitro-osx-x64.zip"
      sha256 "e1f219092929a91514ce9b91c9870b9767bd5c955a55d23f4bcf230361e9ecc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.15/nitro-linux-arm64.tar.gz"
      sha256 "1d94bea0db891f3a7b284881df1e3ade41ca5b44a1dd642cafabc797e443a396"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.15/nitro-linux-x64.tar.gz"
      sha256 "a85f96cf98adca720a9af48bf41e933ff8635795a3988555e43c50ad0f688635"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
