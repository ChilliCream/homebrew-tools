class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.19/nitro-osx-arm64.zip"
      sha256 "4b55bc21bbbfeaa2ce92f9412ae99c82f362d7c52b9994e77fa441c0e376a7d7"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.19/nitro-osx-x64.zip"
      sha256 "d571a1ec577a4d7d4ff505637f68a043432ad1fd439541af5ef4d02541472ba8"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
