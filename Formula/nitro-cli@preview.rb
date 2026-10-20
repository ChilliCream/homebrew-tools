class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.31/nitro-osx-arm64.zip"
      sha256 "83cd26fe61ed1a981c05a857029e8c6046c1ab07532e7f7704c66be2f964b69f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.31/nitro-osx-x64.zip"
      sha256 "1ab38ce7d6aa20a9206876187d68ac6aa0610dc4405307116508d543bad8d6c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.31/nitro-linux-arm64.tar.gz"
      sha256 "2e0dba95d4559a1b181a5bd35c0d91d08e4760de6ca63efb63b51c65e4710be3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.31/nitro-linux-x64.tar.gz"
      sha256 "3c7bebb1a8f9b69c9a4c1adb327b8441900f4777983581fd49d2d3c640c7e4e8"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
