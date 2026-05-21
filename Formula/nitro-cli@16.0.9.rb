class NitroCliAT1609 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.9/nitro-osx-arm64.zip"
      sha256 "3112fa6a035c4f3dcf4e156950dfe71505c9c170771cf5e64236cf31abe3276c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.9/nitro-osx-x64.zip"
      sha256 "667bb520bb3267def2b051549e90373dd21c6fcfc15d464545d472947e6329e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.9/nitro-linux-arm64.tar.gz"
      sha256 "57bca6c7b8f80a12deac226b3946572a0606bde60533ff9b9c7ec169e45c503a"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.9/nitro-linux-x64.tar.gz"
      sha256 "05ae6bdf8246fab052367274ac38442ef6cd3cc025bfd82b9951eef474da37d0"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
