class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.3/nitro-osx-arm64.zip"
      sha256 "bbf1a83bd2cd1468aa3db5c66953ba6e81b448dc3705c11cbee56c8b35a018fc"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.3/nitro-osx-x64.zip"
      sha256 "5cceb59cdf26aa518b305c74ad44b1d9d374752ea53c7ff08610fffcec104675"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.3/nitro-linux-arm64.tar.gz"
      sha256 "a666541deed0ec0df8c87062276c74998f5cc6d2ecba392e21f34da59392010d"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.3/nitro-linux-x64.tar.gz"
      sha256 "83f9a7c4a8864572a160c09f8f886f3c5f9c0afcccca18baae6bade6bd6e402c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
