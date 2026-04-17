class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.3/nitro-osx-arm64.zip"
      sha256 "15d519476c3c6d1cc6099b0e04d5bed508a2acbd05b0a72cdcd72d8baa5fd960"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.3/nitro-osx-x64.zip"
      sha256 "2b3ea06057ef1e45fa93110381d1ecbb4e2cbe01544ab3b7fd75060875035da0"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
