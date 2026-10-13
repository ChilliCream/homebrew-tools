class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.26/nitro-osx-arm64.zip"
      sha256 "14da508794a53b3d257be0ae03f9ce68520e5b8212ecd78ad8de98512c757576"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.26/nitro-osx-x64.zip"
      sha256 "b00ac41dfa3e738e7f984fd63bcc69f57facd53f61fb41b15733b05fb00f9ca3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.26/nitro-linux-arm64.tar.gz"
      sha256 "3f06ecd5245e2e4bad16c314382e0fd269347ddd3136b144ecddc2bd44d2fe8d"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.26/nitro-linux-x64.tar.gz"
      sha256 "657c85213d601b44238f9d5719a05bb6d1bc3cb86e5bb83d07b9ed4e78c599b5"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
