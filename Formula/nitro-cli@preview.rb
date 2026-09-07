class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.4/nitro-osx-arm64.zip"
      sha256 "cc9b2ad5da4ecd72d56e5e389aa7d41366b53fa7ea61c7fd7006973be52b9ef1"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.4/nitro-osx-x64.zip"
      sha256 "07bcb851985b4883b1bad2f1888b1ba6def5981a11231073ba312d02b23635d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.4/nitro-linux-arm64.tar.gz"
      sha256 "378c00764c3be143be97ce0130b3a1a62d8e69726fcd9b499d5275ccdea39da9"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.4/nitro-linux-x64.tar.gz"
      sha256 "dec48a019456f67081b026ac2fd1e29744875eae70c65744eec4d1bc8a2f43d6"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
