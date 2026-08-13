class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.1-p.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.1-p.2/nitro-osx-arm64.zip"
      sha256 "9c6b2877d58d36b06247ff918bc15231a6361ee65a820989f6e682c40f456c27"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.1-p.2/nitro-osx-x64.zip"
      sha256 "38c37566df3fdbc776c428c093152d09b8de253d8d686401e9d28941b18268dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.1-p.2/nitro-linux-arm64.tar.gz"
      sha256 "f6e3e25c855d4069d7fbacaf8149bb6ba972ba8b3e3735c562203230245d422f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.1-p.2/nitro-linux-x64.tar.gz"
      sha256 "2de951441a9e0b9188c3e9c7c0ae5d56217c261dc31d2fb6c97da031b9c758a1"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
