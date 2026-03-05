class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.29/nitro-osx-arm64.zip"
      sha256 "2386bb52506ec80b6a19b177df5e0489bee82a2917b987087ac8bdc9d5944092"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.29/nitro-osx-x64.zip"
      sha256 "125143042dafda28b6d5fb20dda6ce7a83c7a86ad7093a261a262a8ba0760ed5"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
