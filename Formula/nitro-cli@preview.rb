class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.25/nitro-osx-arm64.zip"
      sha256 "44f4c22719ad959b40f1190e8faea096664bb2f894ef5fb6da840578895c36d9"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.25/nitro-osx-x64.zip"
      sha256 "e3494a551bc04e96f4e9f4333cce01feb4b0de9be4cbcba110bc95814db71368"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.25/nitro-linux-arm64.tar.gz"
      sha256 "1f4e45370eb80dc740c08a1843722506f242d311011a16901dff5d44a358c55b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.25/nitro-linux-x64.tar.gz"
      sha256 "bdfd913ca95f812c60ae291511ec7507724d4f090a8491fabc4158a527b7fc1e"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
