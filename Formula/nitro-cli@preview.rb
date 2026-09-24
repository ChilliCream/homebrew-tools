class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.11/nitro-osx-arm64.zip"
      sha256 "5fea0ccb0e98aaa4d52dfa727ba164bfd86265fa3bf8d5f43d8bcfb1b51fb54c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.11/nitro-osx-x64.zip"
      sha256 "7fcb6346a33fbfbfc21e21edb284bbb9656532f84da96b9165174a0f1fe78a1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.11/nitro-linux-arm64.tar.gz"
      sha256 "db3b2b6cd5809191c9d6499384933eabc7bd096a499354c96eccd619523f6c21"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.11/nitro-linux-x64.tar.gz"
      sha256 "a4911738d1454b2186d8084d5ae9c15458844ce2a04ea3586c74f1675831a907"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
