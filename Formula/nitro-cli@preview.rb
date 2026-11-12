class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.11/nitro-osx-arm64.zip"
      sha256 "f0ea4ba39c618de56e2e0ab8dd055a12cf57e263988a289e18eee9cc17a95c1a"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.11/nitro-osx-x64.zip"
      sha256 "7d9ca616abb7550cc55f5e1b64781ef0bc2d06dbbf38bfca013e6bb5852b450f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.11/nitro-linux-arm64.tar.gz"
      sha256 "9aed6b9343eeba9e8e58bf9e6a206ccdd72fcaa29c21204e3cc4f49e20e4b1f4"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.11/nitro-linux-x64.tar.gz"
      sha256 "29476ef5864394e8f750f87e6dc4d5aace775dc63177e07f9b5e20e5327d0561"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
