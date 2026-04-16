class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.32/nitro-osx-arm64.zip"
      sha256 "ae127943a5f05a9a37c3131c9f523445851157a920793a5966c86a45cef39eb4"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.32/nitro-osx-x64.zip"
      sha256 "709141ebb87b20747639c1cb5d9b59e8356dea39da1396ef21775373a24f93e3"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
