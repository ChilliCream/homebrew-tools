class NitroCliAT1623 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3/nitro-osx-arm64.zip"
      sha256 "4c4582f4e1e74ed14f64e0338c1553cd6b7f890feedecdfe76741ed2ec38a54f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3/nitro-osx-x64.zip"
      sha256 "05e95c531e581b965754d90b0b12021040d0fc096d4141562e6431faa7922959"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3/nitro-linux-arm64.tar.gz"
      sha256 "8bc738fc7c75613e6fe75500fea80ebbbf1a8ed3e4cba26af03cc03375709939"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.2.3/nitro-linux-x64.tar.gz"
      sha256 "6abc518e85c73d1a0fd6f950da67c82005661447c17eeb445966e779427d8024"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
