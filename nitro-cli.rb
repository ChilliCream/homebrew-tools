class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.42/nitro-osx-arm64.zip"
      sha256 "2e3c49ca36bdb632e28f0d637d0fcf7f6f319c0b6fd629b4d8e5c52fd74132e9"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.42/nitro-osx-x64.zip"
      sha256 "37e2ed723c538c5f718474cd79871b66021642c2d47d89ba5604c48864fecee5"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
