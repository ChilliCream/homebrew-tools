class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.3/nitro-osx-arm64.zip"
      sha256 "e3fc17b96d76c5fdc344d461ff27fb8061979279d1fb85d01a0e564d71229ba9"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.3/nitro-osx-x64.zip"
      sha256 "d5423d00fe8ff4f029735a46f94b9db6ab1545f1a6cd647125af3bfef6d0c7af"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
