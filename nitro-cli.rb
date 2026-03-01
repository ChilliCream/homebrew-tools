class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.21/nitro-osx-arm64.zip"
      sha256 "2b4bb6fa40e57762ce3b5cf7166274358c2cb809fd2a760775dcc2bd799040e2"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.21/nitro-osx-x64.zip"
      sha256 "624ff05ed8879026774398110d59b99abb55decd44c1eb9be6df869405993249"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
