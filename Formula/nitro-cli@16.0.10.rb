class NitroCliAT16010 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10/nitro-osx-arm64.zip"
      sha256 "83235e90db61045da42ac4796e37d15be00d774b4f429741edb9ea64a3d3c41d"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10/nitro-osx-x64.zip"
      sha256 "d25467108573d8b9d523a940f1ed565723949e7c04d0e9b1a4aa899756396158"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10/nitro-linux-arm64.tar.gz"
      sha256 "8903ff9b6434968be435c0b9aa2a815b0c01d55e83dc3f05314d5ad907184e57"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10/nitro-linux-x64.tar.gz"
      sha256 "c7cb1e483aa554c6147601a835f27ac4f8b023b56e227d129698981397584ef2"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
