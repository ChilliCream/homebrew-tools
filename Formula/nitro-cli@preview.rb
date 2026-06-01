class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.12-p.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.12-p.1.1/nitro-osx-arm64.zip"
      sha256 "46163ca4282271b9e0eda98129776c2707238bbd29950869b8b7afb07115ec88"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.12-p.1.1/nitro-osx-x64.zip"
      sha256 "0a3d2b44f686742b5bebbb6f1e5259715dd065546db097147428cd0fb79c5365"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.12-p.1.1/nitro-linux-arm64.tar.gz"
      sha256 "2bb74328c07528abc9c694350c7d116c966285e549b193687ce16767c5e0fb42"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.12-p.1.1/nitro-linux-x64.tar.gz"
      sha256 "11e4b43d040dcc509c1216d1c8ca382b0175d433153a5e8673067fe017f453df"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
