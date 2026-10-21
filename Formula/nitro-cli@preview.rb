class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.32/nitro-osx-arm64.zip"
      sha256 "1986e3d2788c1dc866c4e1536dd858d2ef12ae15946993c691fcca5a3ebe2933"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.32/nitro-osx-x64.zip"
      sha256 "5cc6e1f802b4f12672fcacfd7fe2ddc21c9f44e7e0fd76a3e0446b2c029b07b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.32/nitro-linux-arm64.tar.gz"
      sha256 "50e796a2c7861deae3ae62a9943338eef9355d3af4c554d9ea926a09193a1574"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.32/nitro-linux-x64.tar.gz"
      sha256 "5471d7a4fa84e70683e167b839b9119fbb0963ce4ea02f798d81f310d70fdb37"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
