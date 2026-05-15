class NitroCliAT16 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.3"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_releases
    regex(/^(16\.\d+\.\d+)$/)
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.3/nitro-osx-arm64.zip"
      sha256 "c6deb49c243bcc50e0c92f0fd4a565c5e852b797301ac436476e84ed45c1d382"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.3/nitro-osx-x64.zip"
      sha256 "52da442d1c9b99b1c30e34eeb907f9f8728d9d50a9c03fd66a8702568127cceb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.3/nitro-linux-arm64.tar.gz"
      sha256 "451dfe4993fd4c04e91ac0e175f2427bfa1f0c32f600abb73b427c48386d9e20"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.3/nitro-linux-x64.tar.gz"
      sha256 "972e5edae62b940775597007f60ecad7dfa7e737cd2a4fd3da53a825b5c55241"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
