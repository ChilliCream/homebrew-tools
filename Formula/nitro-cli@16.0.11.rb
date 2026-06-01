class NitroCliAT16011 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.11/nitro-osx-arm64.zip"
      sha256 "821971594ccb90e3b0dd04a6a5a9e34f0e890da5ec74df8dacd554ce3878a48d"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.11/nitro-osx-x64.zip"
      sha256 "5ffb759e5ede2c7fdcadf97e50c57f68e88bca188411cd4d35fa5a6567721e73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.11/nitro-linux-arm64.tar.gz"
      sha256 "93afbee9077df681e49eac902b7884ef699ec9c9d5c18c514de3ab045c30a522"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.11/nitro-linux-x64.tar.gz"
      sha256 "b6c37ecbd97649dd958b5d2645ca3d1a1677fbfed2d4b723549d20678bd1b641"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
