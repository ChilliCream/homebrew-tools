class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.14/nitro-osx-arm64.zip"
      sha256 "28d6a09dc7c412dd7637ff75844bedaee002a7605836d2844567a7e34b5d89bf"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.14/nitro-osx-x64.zip"
      sha256 "859944e3f10f4db957a42870018e16ee1611166a1e32e983c3443424d8977dee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.14/nitro-linux-arm64.tar.gz"
      sha256 "68caf34376e186d144f7693607d81a1f35ffd3246b5cfa855557b92e94674e59"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.14/nitro-linux-x64.tar.gz"
      sha256 "42b61fd1163cadf38a609f742f94d615cb4753d01d284d145f43ade63d501706"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
