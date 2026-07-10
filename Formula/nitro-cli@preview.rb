class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.5.0-p.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.11/nitro-osx-arm64.zip"
      sha256 "d9ab3ab0d003804dfab5cb19263e1cee8803097505709f444c7dbb8415ff7a37"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.11/nitro-osx-x64.zip"
      sha256 "b0e5d0dc18f03554e9f57038ff8075547542293ef73e94e3322a2e8deb6961d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.11/nitro-linux-arm64.tar.gz"
      sha256 "f0c800475c3b3b1d2ef223cd3d3c3a49db7b0c543217bde39111540411a2449c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.11/nitro-linux-x64.tar.gz"
      sha256 "664cdb810fe4a12cd9aa0225b39beed418bcdf5f2606bb4b2611c74fcba2a11d"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
