class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.10/nitro-osx-arm64.zip"
      sha256 "99a4c4d4de5e3dcf29d716470807bd6285db963d858c2432e80dd0c2152d01b9"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.10/nitro-osx-x64.zip"
      sha256 "8ad0e8fa739b85f808f274ca29a5cf08cc3c9cce8704fade6df3b6d4ca4a8a7b"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
