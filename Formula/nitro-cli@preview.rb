class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.3.0-p.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.3.0-p.2/nitro-osx-arm64.zip"
      sha256 "85bf01cb54ec5614d55bd1f6b2b8a660b0f1dcbf010f2b3d3c29afa6b68107f3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.3.0-p.2/nitro-osx-x64.zip"
      sha256 "6343d8526df015c46eb116f4972e74d8b82d7ebde3c8c092eb51cfc8283f377b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.3.0-p.2/nitro-linux-arm64.tar.gz"
      sha256 "9aa789da7e904a06e2be3bc0e51564c1dd8254cbec5159e897c6393c50d3d856"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.3.0-p.2/nitro-linux-x64.tar.gz"
      sha256 "0772a7257655e243b0717da576edb8f3df1f1ebd5dbdc33b32e2125cf08e8d10"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
