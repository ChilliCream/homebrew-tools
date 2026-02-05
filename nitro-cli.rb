class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.44/nitro-osx-arm64.zip"
      sha256 "f072129b8a3d4cc4d493e8712122541a3a3b03ddb34e3ff50ab0565b64a82e5b"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.44/nitro-osx-x64.zip"
      sha256 "17e51e3b25eaa031ba862bed82dc83d88397ceefd0c9801991633ce30bde6fae"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
