class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.9/nitro-osx-arm64.zip"
      sha256 "539b2a8adf47742dca9db5f98ba2ad8b4daca269f6b7a868ed4761e2e8bd4bba"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.9/nitro-osx-x64.zip"
      sha256 "cdae1237305e0ae19ed81e022923c8f739beac51334981b0714142cd5448d0dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.9/nitro-linux-arm64.tar.gz"
      sha256 "ab2424cad9d355c566115db5b884a60ee4e5df98edb84f55adf523f3c1eaa6fe"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.9/nitro-linux-x64.tar.gz"
      sha256 "c04a3ed9b790d3f09364f9be616be5d0449a3687f59231508305f29896013aae"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
