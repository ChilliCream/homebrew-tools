class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.31/nitro-osx-arm64.zip"
      sha256 "585335b6e03271629282db16ab20f3b43493bef08e248a7e0bea8e8ed8b30723"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.31/nitro-osx-x64.zip"
      sha256 "72903538aaa2ecadb5103c57726c7cf24ae3cf834687b842e0acc94110fd4d8f"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
