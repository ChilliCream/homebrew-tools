class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.12/nitro-osx-arm64.zip"
      sha256 "1f6ee38a0f101d1800e1a4d560055e693e32149350a026e2f01d49a519132eb4"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.12/nitro-osx-x64.zip"
      sha256 "06fd9e030eb9b937245168491a4ec412f580e196d730c34f875e0769e5a6e707"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.12/nitro-linux-arm64.tar.gz"
      sha256 "c0d87559c88c6612e5152cd476c1bdc9b8252656cbb967fbedc0ffd2fbb8b9e9"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.12/nitro-linux-x64.tar.gz"
      sha256 "b2aa4d2dc3e8bdb92acb8a3c4f8d12672d482e5b8f92b8fe08f1c2569dfb7d29"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
