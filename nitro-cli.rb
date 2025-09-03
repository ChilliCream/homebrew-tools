class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.61/nitro-osx-arm64.zip"
      sha256 "dc1dc149641674dc28f221bd74656a7ccf7f41c7d36b9ac6b57494af2418fef7"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.61/nitro-osx-x64.zip"
      sha256 "e09db384f4061287123f5830feb270ecfa4fa4b5c52a0c0b6a283de94a8a0e15"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
