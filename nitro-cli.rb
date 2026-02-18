class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.6/nitro-osx-arm64.zip"
      sha256 "a4423c905858941b63cb94be4f92cb448f64332407a7ead50a304e897b17fb0d"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.6/nitro-osx-x64.zip"
      sha256 "9c1bf6a213653b65d2e052e9552297c5ad0a89ddac2ebf088bf9b4fb4def5701"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
