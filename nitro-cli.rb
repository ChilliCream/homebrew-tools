class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.55/nitro-osx-arm64.zip"
      sha256 "2173d2c290918de129c274676ac8460c844ae438c6d039ffd4d1dfe3c72efc5f"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.55/nitro-osx-x64.zip"
      sha256 "b24f9bb773c2ba6918949124e492f80fb693b663429f58a217193462430081cf"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
