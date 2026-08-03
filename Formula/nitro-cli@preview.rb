class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.14/nitro-osx-arm64.zip"
      sha256 "82d61fc4f725ac9492d39901e2c6377e4035442ec78cce126f5a35685c53713a"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.14/nitro-osx-x64.zip"
      sha256 "3225dc7a70c7ba6c2d3d379a439a998861b61787fa458c1175cc808c4abd8957"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.14/nitro-linux-arm64.tar.gz"
      sha256 "4f24e5b12dce3233f389d0897a066f68b855406913f4816b381669feb033155e"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.14/nitro-linux-x64.tar.gz"
      sha256 "24d16dd946cffa6b86cc3b0d3899ab179a870a76c46f7fc78f00121e573b6816"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
