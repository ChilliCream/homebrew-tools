class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.3-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.3-p.1/nitro-osx-arm64.zip"
      sha256 "1509ae2e79239c678405cfff59b5553fd56b4f78d73f107f27d0311e7cfc91d1"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.3-p.1/nitro-osx-x64.zip"
      sha256 "5da56bff7b4edb213b108c59d3754114856cbda8163366a44ee5cb96a31c9fc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.3-p.1/nitro-linux-arm64.tar.gz"
      sha256 "861a77f674a4e66b4a9cfbc86a1848b8964b74b994d376a8004530512a4940dd"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.3-p.1/nitro-linux-x64.tar.gz"
      sha256 "a9a27062774bd4fc0de980822e4a93c86d22afb7b57ea165e10e2fa2d52b0a91"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
