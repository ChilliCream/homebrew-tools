class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.1/nitro-osx-arm64.zip"
      sha256 "4efb87501df5ec224f04575cda52afae71f1acc39cc31ba79d6dd04ffa15ca42"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.1/nitro-osx-x64.zip"
      sha256 "208deeb553232522f54f4a1b58034fa6da1198ad2e65efb4fe5621477aa00da9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.1/nitro-linux-arm64.tar.gz"
      sha256 "9b420fb1c9a5be863300d3b79abcb1e19ea3855f087e264e64dd7505ad281624"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.1/nitro-linux-x64.tar.gz"
      sha256 "66c498272b8a1bfe30e2540b5ffada62ddabaf1fcc8d17bc9348b0bcdb46a433"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
