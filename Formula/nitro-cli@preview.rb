class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.0-p.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.13/nitro-osx-arm64.zip"
      sha256 "034df99d05e59dd143761466b4a9cc86b94c3f5c60d846163c618fac68d4dbbf"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.13/nitro-osx-x64.zip"
      sha256 "d96cccafb88fe817941f6d7223d070a12699b80706066454a370aa5bcc4c4d88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.13/nitro-linux-arm64.tar.gz"
      sha256 "95529ce839bb7fff51538b69e77c48f9a28ce1d9438db49ee7cab0ed29c362e7"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.13/nitro-linux-x64.tar.gz"
      sha256 "cc596cd6afd35bcda0d437786e31d30bfceead4040b5978319195beb7af81f0a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
