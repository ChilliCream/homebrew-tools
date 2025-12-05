class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.11/nitro-osx-arm64.zip"
      sha256 "69376c940f316d74af76911e428012d763512e05607582a2a925fa9b75a6a058"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.11/nitro-osx-x64.zip"
      sha256 "f548193378dfdb27d5977024ccd1c20e23fbb5aaf060ebc57747b95d301fc94c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
