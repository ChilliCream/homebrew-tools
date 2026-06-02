class NitroCliAT16013 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.13/nitro-osx-arm64.zip"
      sha256 "7926825c544f3f7081b09a1bdeeeeeecc596c1017e3ee18abd2ac05190f780ca"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.13/nitro-osx-x64.zip"
      sha256 "ee16d7c5693663180098b08d0855a616698e426bf5803d7c0faeb7e09d4bbc70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.13/nitro-linux-arm64.tar.gz"
      sha256 "193e4a1c3003a98d54322c0cea5f6b2b631b7e00607ce04199972a058c817ba7"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.13/nitro-linux-x64.tar.gz"
      sha256 "20f27f2aa5bdd78304d1f6179266ac6bf8a6d8cda52feb0a364c1cb4f214df18"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
