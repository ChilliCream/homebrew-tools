class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.18/nitro-osx-arm64.zip"
      sha256 "ca4f7887c5cb1e7c11b3ed55a10539d46c241d50e9a2d73ae2ec5b7de778a291"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.18/nitro-osx-x64.zip"
      sha256 "b92daaa5ad27614c135d0991c1b6e37cfbeb4991a3919a36cf744b57e33b83f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.18/nitro-linux-arm64.tar.gz"
      sha256 "a67774110d0a2ab1eda4341473fcf82dbf5bdc3ac02547019ab5b5447471d510"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.18/nitro-linux-x64.tar.gz"
      sha256 "0587ab8c08b5ca14d33b8f63d9df387dc8b0219b656fffa99cc82337aa48349c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
