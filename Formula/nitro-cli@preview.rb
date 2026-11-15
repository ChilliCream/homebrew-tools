class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.14/nitro-osx-arm64.zip"
      sha256 "5cb5d3174e9acf57b2d87f91607cd0777ecfb487a17fb72fb63a1e1fd1abcdb9"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.14/nitro-osx-x64.zip"
      sha256 "18a32e79a35f48050a56617a456371d8ac5853e20eeed00311098a9c043a30a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.14/nitro-linux-arm64.tar.gz"
      sha256 "0c86d75e5381c63910fa9fd131f939e6c3abfd0b3de6588909a33a3db980668a"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.14/nitro-linux-x64.tar.gz"
      sha256 "db6834736641a33ca6ab67492dc572d039c0fd708ad6703ef15a5263fe90a425"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
