class NitroCliAT1613 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.3/nitro-osx-arm64.zip"
      sha256 "670bc19d419c2cad8a062b1d7f723bc89a201d980dd8fd9e8adf5ab43b58da75"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.3/nitro-osx-x64.zip"
      sha256 "efab7eb56340c0da461865ceef3bb9e5c8bd95f0cffecca7c7963f1322930409"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.3/nitro-linux-arm64.tar.gz"
      sha256 "355de707e19a9a05bc552cb34521a69740780bd67bff0830545b1b5e5ef66cde"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.3/nitro-linux-x64.tar.gz"
      sha256 "32aea56039de55856557619e3081d7873816000bc3b3f0166f63a2acf8a49312"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
