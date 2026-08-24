class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.2-p.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.7/nitro-osx-arm64.zip"
      sha256 "a81f98203584c33e820bbbce3231e12555b71368969dc2a23da12706ebdf7eba"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.7/nitro-osx-x64.zip"
      sha256 "0717f29383dafde6ebc5e87af1680187cbb365e8e6b5e3fc68500ca12f6ce9ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.7/nitro-linux-arm64.tar.gz"
      sha256 "dff91342efb2f047c1246ff91e63d193cfff023928070d3efd8ba607feb4236f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.7/nitro-linux-x64.tar.gz"
      sha256 "4765fc1edf86d19ca856a032166865b10304f00d6bd3c0d37aaf89ac4127cd4d"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
