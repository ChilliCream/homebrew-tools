class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.4-p.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.4/nitro-osx-arm64.zip"
      sha256 "84bc64d410e399ad73a14a9c3017fcff74820ffed3b7bffe73d47b72738420cb"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.4/nitro-osx-x64.zip"
      sha256 "4df53bbd1ed742260a5e43f2b39fcc9f00680a922c4684fa54bc14de56e17232"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.4/nitro-linux-arm64.tar.gz"
      sha256 "50c7db4df37baec8026d71bd0723e756bc94cd6ac97d5eed50cb050b8aed589d"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.4/nitro-linux-x64.tar.gz"
      sha256 "07c83fed5a20ff108d06f4482588177ffa032ab0eea27095dde892d8f60801bf"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
