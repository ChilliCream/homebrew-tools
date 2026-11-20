class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.17/nitro-osx-arm64.zip"
      sha256 "5f4cf2d25fbc79f114ceb17f9be3fbe155e8a3ac6d99bf7fe8f56ff291b6b5ec"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.17/nitro-osx-x64.zip"
      sha256 "f297890aaa4464c0ebdd7a401e5c19c92fdef84f32c07d7f1a16bf3076973e55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.17/nitro-linux-arm64.tar.gz"
      sha256 "e94686af9afcd10fbe1b8228a83be6cbd9125eee4c232e07c60bc01b6ff37565"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.17/nitro-linux-x64.tar.gz"
      sha256 "bd6b2bfe419791eb986b991977be47e983533b89c8bba4717eceeefa76990127"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
