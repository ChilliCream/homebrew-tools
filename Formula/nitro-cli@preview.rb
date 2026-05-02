class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.1-p.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.3/nitro-osx-arm64.zip"
      sha256 "d1848d831deb5e7ec4ac972d7f05dbd89d099e8a185d5aed19f99a11d67dc8df"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.3/nitro-osx-x64.zip"
      sha256 "0b62be4008ccdb90feb59a20eb76caffc527367719f3b20bf7249e6deb0e5b10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.3/nitro-linux-arm64.tar.gz"
      sha256 "4effa6e8647568b4afbc8b94d438524a7cbb9ddfe4ba3bcd58d3e8b1909a036c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.3/nitro-linux-x64.tar.gz"
      sha256 "bb82f890d1f93230650c28399a29da2903868cc8c8e6fdc42312b14009d8e9d7"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
