class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.39/nitro-osx-arm64.zip"
      sha256 "74d3a9f0a6e329bcde2dc307e52839fc94069855690e0e42288625becfc595e6"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.39/nitro-osx-x64.zip"
      sha256 "957d96b69ecfe7fefb538910592292d374bec9d94a862454b3cb28ca392fbc0b"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
