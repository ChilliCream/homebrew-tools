class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.5.0-p.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.8/nitro-osx-arm64.zip"
      sha256 "a35583ea100945b5482bfb8b1ee64e73397d19a4bf5435f4807770edf77c843c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.8/nitro-osx-x64.zip"
      sha256 "555f3aac406756b087dbe0984b930cd5ebdcf0ff5d5644eba879d75c88cb8dde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.8/nitro-linux-arm64.tar.gz"
      sha256 "7e0da2a8db14c31158a8e79b9f63594470bea8569c0e290a7b555578e8a2c4e6"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.8/nitro-linux-x64.tar.gz"
      sha256 "4f11bfea9672cf7970f0be87609dc7529593d46dda6d35c70a73d78e28bfdcbd"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
