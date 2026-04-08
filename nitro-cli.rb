class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.27/nitro-osx-arm64.zip"
      sha256 "2cf3cd9bc871ba110ec757341e141994cd14a4f037edda487a35169fc4a64da5"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.27/nitro-osx-x64.zip"
      sha256 "425a0275dbc2b8668b6018ad4d4d42162854c5c1002bea3c1ef224a84ac12548"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
