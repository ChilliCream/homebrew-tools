class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.5"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.5/nitro-osx-arm64.zip"
      sha256 "03b1fdeefe4b2d18b66c773b7783f6cdd95d9a7b4b41588801e0b75fc7b464ee"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.5/nitro-osx-x64.zip"
      sha256 "86ce8419be0d55931ef2d4c4a4370866defcede9016691bcb1c712d41b02a712"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.5/nitro-linux-arm64.tar.gz"
      sha256 "6e299bc0bf56f7f28259a39fa6c0a37d5c726030fbda57d6453b7f118835216b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.5/nitro-linux-x64.tar.gz"
      sha256 "c95081d4cbe849a1856649126ba411fca14c822674ca4da834d525725591af5e"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
