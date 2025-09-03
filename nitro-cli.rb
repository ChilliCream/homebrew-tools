class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.62/nitro-osx-arm64.zip"
      sha256 "42be716dc9d6c3e3095daa475fd7f536eb5a0338fce5ad881de7b8965ffc7604"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.62/nitro-osx-x64.zip"
      sha256 "2788f4aae40f191663a65d9ac70b8c036e78519cb307cdcdcf1abc3e9557e199"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
