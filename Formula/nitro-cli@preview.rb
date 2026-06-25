class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.4.0-p.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.3/nitro-osx-arm64.zip"
      sha256 "9879cdf1660d2e9cb15cf5817773eb24655f4c36a15b79709028c93d619b0450"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.3/nitro-osx-x64.zip"
      sha256 "1bda6e6eaa3e7ad55a6231663208a6345930ae4fe3d8164abef9433a0d9faa8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.3/nitro-linux-arm64.tar.gz"
      sha256 "3529ce98876b16931265d5d12b2eece3bae7052a4e71f80cdfae3eae78af616c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.3/nitro-linux-x64.tar.gz"
      sha256 "a376bdd73f1bc0e70548b0649569caecb9ea0bfb317996601a9e361cedf03af4"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
