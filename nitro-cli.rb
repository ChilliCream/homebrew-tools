class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.3/nitro-osx-arm64.zip"
      sha256 "9ece8cf1eb400329033fa86c9ca34fb8549425ea617cc9472a9c2bf922c79816"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.3/nitro-osx-x64.zip"
      sha256 "2b31018e9990f9d9288055b214a0a63acc9ffcf3c8c01f1134483a80d9a92846"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
