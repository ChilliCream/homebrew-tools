class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.40/nitro-osx-arm64.zip"
      sha256 "915347355f52a82ff1a8125042d8e9a96a141e94b3b95a9cbad37d1f0beaf68c"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.40/nitro-osx-x64.zip"
      sha256 "35930ceafd39bc56e3b7fb8edf5c6acf6b6ce6f114dcb63f3f145fa509449113"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
