class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.17/nitro-osx-arm64.zip"
      sha256 "638189efb575e30cfc69f36c1e263f8665aee4f6a5003d9373b4e22a6d78391f"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.17/nitro-osx-x64.zip"
      sha256 "91bcc899ab900788c94f92d814dae987d595b8fdc8c050f90a92f6256e57cab3"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
