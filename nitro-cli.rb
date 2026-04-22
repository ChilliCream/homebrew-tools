class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.38/nitro-osx-arm64.zip"
      sha256 "8fb8abde6875b7935553d97d41c4b5341785a90d3fb10f1c00c10f8346efc9ae"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.38/nitro-osx-x64.zip"
      sha256 "71404fc19e20b603f279a84c578e532079c35f1cda1e9e3bd467539fd69783e8"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
