class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.9"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.9/nitro-osx-arm64.zip"
      sha256 "36df80a1e6b12f1dc59275b0997156eccf19e1f8ea3478f3d871c515a77e74e0"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.9/nitro-osx-x64.zip"
      sha256 "b18b3e2e6c097e02b38edb6a11cc45fac6181a48fff1c7150dcef4a529253fd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.9/nitro-linux-arm64.tar.gz"
      sha256 "4c8c2c4f856e54b8dbb3655bcbb19a5d668b12af9c3aa2ccfc8409e74f1eb636"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.9/nitro-linux-x64.tar.gz"
      sha256 "f6b3e637bf49232cb515ad77b8694a1a4614d04d0864ec857b9ab59f6274fb8a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
