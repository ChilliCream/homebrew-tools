class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.4.0-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.1/nitro-osx-arm64.zip"
      sha256 "9873d5f0564c59cf1e887ce7ba1b6e7660115749102a38dec143196fe9aa5855"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.1/nitro-osx-x64.zip"
      sha256 "fcfce6b8e7b521df8d1eee36be42e4aa4362f01c5925419f8f0d514465cf1a88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.1/nitro-linux-arm64.tar.gz"
      sha256 "507ca17c8f6c64850ceb5b74064a80bff370b30cec7bf3faa797a8cae01e1a12"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.1/nitro-linux-x64.tar.gz"
      sha256 "9ba2c19a73b47a7ed91a98150676dc5658ef0de4812e9c7d37869daeb2a0f598"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
