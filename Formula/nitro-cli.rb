class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.4/nitro-osx-arm64.zip"
      sha256 "06e3d2cf22b8830102a7a9d4e2ef7d255fee2be23335e5195327d01a35d6fe68"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.4/nitro-osx-x64.zip"
      sha256 "59b029e839bb3b4db1df789a5239a6497fcfc9924ff7a364d6d496a3d64bca37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.4/nitro-linux-arm64.tar.gz"
      sha256 "90af2c114b3ca74a919fc22face46fd4fcbc64a92c47f052a5f9cf9c2844d438"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.4/nitro-linux-x64.tar.gz"
      sha256 "5f3585e6ac19fcf0312a2aa258ab102cd2f9f0f69d4b2d8c0ff9623a817e986c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
