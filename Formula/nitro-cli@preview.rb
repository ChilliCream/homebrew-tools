class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.0-rc.1.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.42/nitro-osx-arm64.zip"
      sha256 "fb885b57e3aec5fc513a5f41290975577574f7c15cffc95fe16e0822ed446308"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.42/nitro-osx-x64.zip"
      sha256 "f423a049db473139b9ff3db6ceba1a2e04e56115faad4fca4b07d7f55b5ef7ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.42/nitro-linux-arm64.tar.gz"
      sha256 "8008e7181094a0559ec9b0782d62c3db333b64e997c05085203ccfc401b15413"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.42/nitro-linux-x64.tar.gz"
      sha256 "4517bff4d1220ad9e70289e71a9d578249799c632f81e117028eaf3bd854362c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
