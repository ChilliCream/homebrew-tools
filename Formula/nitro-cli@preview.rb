class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.2/nitro-osx-arm64.zip"
      sha256 "81174753d64547a7edf18ec42a44b86825f8b5559dc6bf91bf23972cd16af566"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.2/nitro-osx-x64.zip"
      sha256 "59d0ff3d676f736b8ad193368ff1c618c9ccb3041714041fec10eb18afa8b2f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.2/nitro-linux-arm64.tar.gz"
      sha256 "a93038627c43e7f0eb09000f5d91ef342381e352c6cc632fd4e930ed6a0df346"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.2/nitro-linux-x64.tar.gz"
      sha256 "ef6ed4979249038208d9119b9af828050df44a4f3860ea98025181c1905bdd9c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
