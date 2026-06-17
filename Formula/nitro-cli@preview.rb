class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.2.0-p.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.0-p.4/nitro-osx-arm64.zip"
      sha256 "cfd6c0732cea40152b1b104d18a71564c6eaac54f40cae907373375f6a22a332"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.0-p.4/nitro-osx-x64.zip"
      sha256 "9185a1ccd3552d22f8190877c73e9f1193179fdaa0cc8863cca652256c9eadb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.0-p.4/nitro-linux-arm64.tar.gz"
      sha256 "a55b6fdbb5cb38599a4ba37c19ea1b561af2519ed882f997f36bef86fb3d4594"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.0-p.4/nitro-linux-x64.tar.gz"
      sha256 "01a377037ccc2ecb8cb209fe6b08bd0f3b40f38f56e4bde3d8da8412f121093e"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
