class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.37/nitro-osx-arm64.zip"
      sha256 "c32201ea611e10c281416cda0551035bf5eda4310accb614f505969bb130e4b8"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.37/nitro-osx-x64.zip"
      sha256 "29a0dbc1b1702fcf9d1236019ecf4bda4611279a754b4385032952fad647436e"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
