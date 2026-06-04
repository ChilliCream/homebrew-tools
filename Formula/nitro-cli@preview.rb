class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.2-p.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.2-p.2/nitro-osx-arm64.zip"
      sha256 "b3046f6dc1f7deba8b9b670183e40b35caf3e29d721713104784a3c3ef280125"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.2-p.2/nitro-osx-x64.zip"
      sha256 "6e933b9456e73e773852c9482220f5b4604dd3f3296f038cfac057ac78b0962d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.2-p.2/nitro-linux-arm64.tar.gz"
      sha256 "e3610d53d49315a6b51884e0cdda9a5792712e2adb7da1c9819044cd2481f56c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.2-p.2/nitro-linux-x64.tar.gz"
      sha256 "2532e8bb2e0f58c6f80c00b07df178a92813bfb067219f11a92c73afff33150f"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
