class NitroCliAT1662 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2/nitro-osx-arm64.zip"
      sha256 "c5d59d9e135d0ccb58e5742316fe9a71dc6b059326b7a3cc3eb1d6178a593c0b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2/nitro-osx-x64.zip"
      sha256 "08dcbbc157b495e782f8558567eb161d375f6a0c04e86c7ff835ef25e22cdd1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2/nitro-linux-arm64.tar.gz"
      sha256 "1ed233fdcc539df67ef69316df9c5ea5a7e6c97c3108a5157cc5c2656fce2e7c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2/nitro-linux-x64.tar.gz"
      sha256 "35d9b004ffcef7ca347ab6c7b6f58581a87b3312f57f25cecf1e786bf8c1590f"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
