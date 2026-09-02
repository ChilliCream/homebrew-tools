class NitroCliAT1663 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.3/nitro-osx-arm64.zip"
      sha256 "7a2120bc8066e391c2620cc0707751f2fbd5202e81f8c38c3b827220c92c25b5"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.3/nitro-osx-x64.zip"
      sha256 "854ae676d67ff575415ed87e0a1bc6013f4b8e9c64c4b1a6aa2e962ad340dd7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.3/nitro-linux-arm64.tar.gz"
      sha256 "2beb37f55a1ac15ff94203a1c7bcc6fef71067d9f362d51cda007d928c491d7f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.3/nitro-linux-x64.tar.gz"
      sha256 "b940ec14089407c7cbeb2dacbab0c66470d97147ec4796076c2863109f1d02ec"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
