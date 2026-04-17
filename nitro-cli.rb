class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.34/nitro-osx-arm64.zip"
      sha256 "05772320a63eaa39b82edf7b72b71fb04f46189e96fb905f42bc0fccf7ffde61"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.34/nitro-osx-x64.zip"
      sha256 "b32b8899626d8a27a1721a5774aa7bc6140161e6f9459af7cd90e8a84c5ded22"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
