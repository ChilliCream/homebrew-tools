class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.20/nitro-osx-arm64.zip"
      sha256 "c2e6b1d007ceab16f87d3ed2411484f2b33e3caef6361fb6195184c2db3c59a9"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.20/nitro-osx-x64.zip"
      sha256 "ef6cb9da8554240fe66da6d3eb6bf5e9a648d235eb2386795b62837bf4b8c5a7"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
