class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.11/nitro-osx-arm64.zip"
      sha256 "8236e33fd3428904c3f835b720bd045aa5c4df00cbfcb62c0f085268392dda86"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.11/nitro-osx-x64.zip"
      sha256 "c84c4884e6e87461ce0da6c9d982a67084f2e3a914f577480a3a2ff173665e68"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
