class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.58/nitro-osx-arm64.zip"
      sha256 "19bbb0429f6a2e4adf2630ad0c347629ee7715d648b593616123056793463b30"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.58/nitro-osx-x64.zip"
      sha256 "056acd61bc75a154437cc519349b8fd9cf9d05ee011f674cef6ebe49e2755bf9"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
