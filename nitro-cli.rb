class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.29/nitro-osx-arm64.zip"
      sha256 "268a9e0948e33c1f05729c346fce88f9c4ff65690fcff1ba5001ff2ed3bf6d60"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.29/nitro-osx-x64.zip"
      sha256 "f2e904dee62ec0fb45fbd534f66b04232ea60c356b9fe6986edfb8cb89aab544"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
