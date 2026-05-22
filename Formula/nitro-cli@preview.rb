class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.10-p.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.3/nitro-osx-arm64.zip"
      sha256 "6e7afdf71dd47aaf17efaecf0a4d3a47094f96b59ad57597d0fd136f161e971e"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.3/nitro-osx-x64.zip"
      sha256 "cffc1f79f6e0b90666ae086a65129e0361e688b8fa4ceb58c92edd04ffe63a04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.3/nitro-linux-arm64.tar.gz"
      sha256 "14bd75ec8c6adf6b2c9a71257548e8fe0d4f764a193187e40c2724664d3af98a"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.3/nitro-linux-x64.tar.gz"
      sha256 "a3ed65cf828e94ad038ddece8f181b58b207881cc618d92e304c99e633b85356"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
