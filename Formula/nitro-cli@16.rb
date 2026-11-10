class NitroCliAT16 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_releases
    regex(/^(16\.\d+\.\d+)$/)
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.4/nitro-osx-arm64.zip"
      sha256 "ca96c255ed6420f5e88dd546e538877e1f123354f8f8de4e4b7775086773a810"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.4/nitro-osx-x64.zip"
      sha256 "f6c3d6dc0e5c302df41b742e3486a61d078cd5ec97ef48426f9d68628403efe7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.4/nitro-linux-arm64.tar.gz"
      sha256 "336273727d0bf4f4e43c90ca78b44d013c4a5f2a1484be35366655381efcef8a"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.4/nitro-linux-x64.tar.gz"
      sha256 "ea03874236101972e570702cfe4d0090d7360b4b80e46326647a8efa1f73e887"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
