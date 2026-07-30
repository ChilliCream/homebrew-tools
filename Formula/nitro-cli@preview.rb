class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.8/nitro-osx-arm64.zip"
      sha256 "f9b312e4bd90986bd8b993ad19922d553fff2ccc5620e33de070a7ae1a17376f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.8/nitro-osx-x64.zip"
      sha256 "b049cefe30205bb592b8b6fefdbd53c988d8f565abe44fd6dc1c2e01301fa187"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.8/nitro-linux-arm64.tar.gz"
      sha256 "489c33634718e4e378e57b5fe0714c0f982363cef4acd62916c3ece38caac2c6"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.8/nitro-linux-x64.tar.gz"
      sha256 "5da99abc5bbf51e6323b4a9db68003b7f86c7f497ce0041667832dc6e82d1d90"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
