class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.4-p.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.5/nitro-osx-arm64.zip"
      sha256 "9c8179c91e9e20e5fb205c821781b112bfd3033a0c90a552885397b8c186520c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.5/nitro-osx-x64.zip"
      sha256 "4bc1c711f71304d94796577c1eb3311fe8fa48deb145dc79d5d728b2100b4248"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.5/nitro-linux-arm64.tar.gz"
      sha256 "d014c5ffa73013566a996caaaa9a38ff8d29e59307b3444f1c594cd954f0f85a"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.5/nitro-linux-x64.tar.gz"
      sha256 "5d924a1f5934d114bc2bbf971808a5d7876f647cb41ea46aad57a3031c3542a1"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
