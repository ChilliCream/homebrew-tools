class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.7/nitro-osx-arm64.zip"
      sha256 "2a0e04d740a7c147be17562fa8a4b166a52e60c863177ed449193bf86b3e0e9d"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.7/nitro-osx-x64.zip"
      sha256 "de744f579de5d5a45779dc87d4df84db52ce0335a6dcbcc74eb6ca887767587f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.7/nitro-linux-arm64.tar.gz"
      sha256 "83dffabc0d7c767d84f0c115fe1809f0de3b6803e104b643cadadb9bdb8bdf6b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.7/nitro-linux-x64.tar.gz"
      sha256 "1122d13c565768570a47f3c91f2da966de6268006ad833e6d3b726326e42abb9"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
