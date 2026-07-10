class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.5.0-p.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.12/nitro-osx-arm64.zip"
      sha256 "d14b120f3677190c3f85ed31e7aaa08be38aa066791cb9b02df9da49c64218cb"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.12/nitro-osx-x64.zip"
      sha256 "fb1df34da1412702af02f76102ffcdb0c3a9f789d8449a16987573c33f7e3b03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.12/nitro-linux-arm64.tar.gz"
      sha256 "e9d25d1d7cf3a257959a5cfe0472d812bdf6b957e261b653f96975603a5d4e8b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.12/nitro-linux-x64.tar.gz"
      sha256 "207fa3927b869dcd27d57f089331438dbbd2d6352c2617138921ca692fcae260"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
