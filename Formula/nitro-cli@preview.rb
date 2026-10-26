class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.3/nitro-osx-arm64.zip"
      sha256 "3a1f2ce8ba25d828de7c021092562733d491d1d071ee9a287dd577a1c25a4dd1"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.3/nitro-osx-x64.zip"
      sha256 "020ef7117f1eca51e8109056371fc1947b713e4959ede9f6f98b589de16c73b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.3/nitro-linux-arm64.tar.gz"
      sha256 "9d883ee97bf36170972bac28191cd39d5ca72724a8b8c22f067a7b17d2120087"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.3/nitro-linux-x64.tar.gz"
      sha256 "4fbcb7968191e009e56c2e74837273308d667ca975cfecb4f78178cc334315ae"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
