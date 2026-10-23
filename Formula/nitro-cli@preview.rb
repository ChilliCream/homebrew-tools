class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.38/nitro-osx-arm64.zip"
      sha256 "b5d45e3a7a66c378cff68bce21c9a2cb63fd3996e928e9f154891abe2b9b2952"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.38/nitro-osx-x64.zip"
      sha256 "7dc5ddd49b065b353d39e083734866485c5dce23fc0a98af3b1ebd37fceb1070"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.38/nitro-linux-arm64.tar.gz"
      sha256 "ca554aa7e4387e4332bfe5a5d8e68daf1a79b29975b1384959f7d38b0c236746"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.38/nitro-linux-x64.tar.gz"
      sha256 "76cf9c6ac0b2f5d23576a8c4c03fa8d55a3d970b8fed07cf6c68981047c3953c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
