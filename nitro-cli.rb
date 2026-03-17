class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.47/nitro-osx-arm64.zip"
      sha256 "91703794f6b3539b6d9311dbb279f901bda7d853528137d97548728e7e11d499"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.47/nitro-osx-x64.zip"
      sha256 "37d683cfcb19c0362a9b31c8f07a78cca05ca711e1e8f8f0d52ab7c7571b08c5"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
