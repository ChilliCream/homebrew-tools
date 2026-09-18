class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.0-p.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8/nitro-osx-arm64.zip"
      sha256 "cb97148b0b503aaeb1addc925c993334df9027b7c5cc6610c8b56577a12fd690"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8/nitro-osx-x64.zip"
      sha256 "e9d86b3eed8cc8d485f7f5c03e8d970997b32c2e8733d277b3273662a3aa6314"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8/nitro-linux-arm64.tar.gz"
      sha256 "92e95d8801899fb67361ea15ac695c908698c84ccdd9e41378c8a388e1c2fa3b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8/nitro-linux-x64.tar.gz"
      sha256 "4888233480b3188611bc35ada0385df65db16dbc15b7d0a514c16b2b266e95b0"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
