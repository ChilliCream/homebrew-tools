class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.18/nitro-osx-arm64.zip"
      sha256 "f572de71c5e6aeb9128244073e9a66113670c5d531ff8befd7501fb88f890148"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.18/nitro-osx-x64.zip"
      sha256 "9d58969d0674bf2eb06bca657eee5c4c85d3b3367a5992ea4e111543cbc20502"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
