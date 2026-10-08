class NitroCliAT16 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.8"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_releases
    regex(/^(16\.\d+\.\d+)$/)
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.8/nitro-osx-arm64.zip"
      sha256 "0a95a0e0832a173c2439a4c668affbf7b0646faff38b89a1b6ecc41f51a2b134"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.8/nitro-osx-x64.zip"
      sha256 "0a251d897e841d336bdb35c3f4c11467c50be7ed907e0c99da565037b85d0dd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.8/nitro-linux-arm64.tar.gz"
      sha256 "fbd66aac89d01ac0f5cd374d18c4bfdabfac6047fc0971d737b23e8c564422a7"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.8/nitro-linux-x64.tar.gz"
      sha256 "7aabccc5c38b7954ce3f1a0afca43b8fcc736dcf44efd00278629de2b08cbd9e"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
