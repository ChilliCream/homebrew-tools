class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.22/nitro-osx-arm64.zip"
      sha256 "b8c89651b07572b097fed63c67ac4bb740bf37ff036d8c2a2b04b93b96e5863b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.22/nitro-osx-x64.zip"
      sha256 "1b24634e5d41d0c488888158c132b737587465ba3f72a97c0edbdb2b51334294"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.22/nitro-linux-arm64.tar.gz"
      sha256 "7069bd74b864738cbbe48172a030f8b6e97818ccf6e22229a314074aaad7d4d2"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.22/nitro-linux-x64.tar.gz"
      sha256 "36d6e06045c2ea3b62ae4be4a038b8a8900f8ae6b9c48ee57a55f30db0e05fa5"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
