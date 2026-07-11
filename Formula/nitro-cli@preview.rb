class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.5.0-p.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.14/nitro-osx-arm64.zip"
      sha256 "bb85ac292277459b58e712289fa7cfb08ff24830516af051cdc78eac836f45e5"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.14/nitro-osx-x64.zip"
      sha256 "142a24fae2904654fe5fbb921354b807f47fda55884b33b4a37652caf756e5c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.14/nitro-linux-arm64.tar.gz"
      sha256 "50dec66592d9ea014a85c67ff6579e8436c01cc230308784f68bddded4e15e8f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.14/nitro-linux-x64.tar.gz"
      sha256 "4b1c57ef7e2725910947dd1634fc2bdd5243d1f7b7822d9c6527b50a29aa8fa7"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
