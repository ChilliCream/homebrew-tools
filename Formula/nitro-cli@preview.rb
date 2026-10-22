class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.36/nitro-osx-arm64.zip"
      sha256 "54ad2bc7d51fca2697f70092a4c54a9e1f62142f9abefb55b07ff3b992d6d578"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.36/nitro-osx-x64.zip"
      sha256 "841a279b791813333f7c24fe9841c2576c45c45a7b16e051b1ccb0e2385e646b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.36/nitro-linux-arm64.tar.gz"
      sha256 "2c417274633f8219aa17c7a642a166702c8ddd7d3e7a2857b2f0719accf17afb"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.36/nitro-linux-x64.tar.gz"
      sha256 "c447ef6718781bd4dd741e38c330714e58fb6f8977119ba322cdba03d44d6cbf"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
