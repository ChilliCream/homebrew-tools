class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.5.1-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.1-p.1/nitro-osx-arm64.zip"
      sha256 "e03de874c69b2bacd0ee71b9a4e09a06591daf382ea00dc58914275d16d06ae6"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.1-p.1/nitro-osx-x64.zip"
      sha256 "821777d1370debf8dc82d31551ad2b1940396a2ab4203e20e4bdde3cb22132a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.1-p.1/nitro-linux-arm64.tar.gz"
      sha256 "cfd3a00f21111abdda3e8c2a43cf6671c636eec5ab6311d32748a03ab1ebcd7e"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.1-p.1/nitro-linux-x64.tar.gz"
      sha256 "30117dc702d4e32beeae28a29a868809c732713b0d84b297c90c16e340ec042a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
