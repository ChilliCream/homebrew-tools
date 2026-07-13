class NitroCliAT1650 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0/nitro-osx-arm64.zip"
      sha256 "e1418339cbf34e43762a534741e03ba38274d74db2ac07c281b78f2ddbb59e42"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0/nitro-osx-x64.zip"
      sha256 "e47729afa78af9a61a1377f0343f9d1ee61c69c705e8a4d0105b8de45a3de3ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0/nitro-linux-arm64.tar.gz"
      sha256 "77103f0a24be22131d3db84149b0c689881129c97afb000e0ca3aa5e6ce593fb"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0/nitro-linux-x64.tar.gz"
      sha256 "c7e432d0cfd4e95b30fe858a7330ea128f8ea8aad1e6ebe1c465a088d0fc291b"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
