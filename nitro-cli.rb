class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.63/nitro-osx-arm64.zip"
      sha256 "74d583e566661d6bc04e88872dbdb1c9f684f6fbc1167cba3fb5f4cd166fbc23"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.63/nitro-osx-x64.zip"
      sha256 "257c5673e7b4cc763b334210338faa84ae3364a1064e4b59224ca845092fa967"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
