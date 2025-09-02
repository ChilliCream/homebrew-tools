class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.54/nitro-osx-arm64.zip"
      sha256 "59b431b3e94e0df7713bc80e352fac9c3838adc5ea668f484e26c2be00532f88"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.54/nitro-osx-x64.zip"
      sha256 "a4a6f5777a8050d53e4009ad35d67c3f91c0200216d7a189e18deec338a0a7bd"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
