class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.23/nitro-osx-arm64.zip"
      sha256 "acb43ef4efbcfcb817dd323b3044b180dd51ec7e3bd4dd2c6dc9170cfb8d7bf2"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.23/nitro-osx-x64.zip"
      sha256 "291dfe54fa47ace74e12412ae97a731ccae2c612145d4c285b548757b99aa189"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.23/nitro-linux-arm64.tar.gz"
      sha256 "606b7e4a39e21909d88ef8232f88d004a77f1b9ccb01190702999777e2329a60"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.23/nitro-linux-x64.tar.gz"
      sha256 "d13822a9dce3513b8abeaf111eb2f731072040840df9bdcbeacec0366ace18b3"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
