class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.25/nitro-osx-arm64.zip"
      sha256 "5ad91f0794bb541b0181f34a0276ce7d8404a3f296283d8330078be2c51318ad"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.25/nitro-osx-x64.zip"
      sha256 "4f18b29de36f7df8688e74a617bfc081c1d0d667115d30f3b1f8222f0d3e854c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.25/nitro-linux-arm64.tar.gz"
      sha256 "20049e2b202b95f123bf0f6d2f31fcb7fa486928093a2053a2e656799cd0d516"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.25/nitro-linux-x64.tar.gz"
      sha256 "c74994cd829c68305cb88700fabc172c306bab34ba3ed3c3c0d56b5f57953431"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
