class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.2-p.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.6/nitro-osx-arm64.zip"
      sha256 "ffda4b4f65748e09eb403eae6a1f8418ae0686c70212743f8efad751bdf7d39f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.6/nitro-osx-x64.zip"
      sha256 "3d649adc50244672cb95c2e7822b831031023a0655434aa50c65f714d2d3def8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.6/nitro-linux-arm64.tar.gz"
      sha256 "06f29f421fe330390b238421d280cbe2a7d8eb2d817d31370c173af18424f3b5"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.6/nitro-linux-x64.tar.gz"
      sha256 "e91fc0f06df1792d03cb66a42d66ee82ba97face42233a45eab4e9cb1f9ce97e"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
