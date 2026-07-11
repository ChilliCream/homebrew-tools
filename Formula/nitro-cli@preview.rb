class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.5.0-p.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.15/nitro-osx-arm64.zip"
      sha256 "76ba72ddcfac5a4e88faa767949d6ea5b3257e85c4599436dbfc3861ef9955cc"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.15/nitro-osx-x64.zip"
      sha256 "77840a134b6da276d53f77746a40878aad72e33dc797a8311d6923fc714470dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.15/nitro-linux-arm64.tar.gz"
      sha256 "64a1cc52af0ee847c549ed158d6ed523391ffb402007c80dac243cffadee5cb2"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.15/nitro-linux-x64.tar.gz"
      sha256 "a5244a6b55f450a38a684160fb778aea2b97341e319db6b8aff06da8091292a2"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
