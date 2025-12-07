class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.12/nitro-osx-arm64.zip"
      sha256 "8d91f32d0d62c2d21c81f47442d1918d3cb6336f705c991433dfea7d71231eae"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.12/nitro-osx-x64.zip"
      sha256 "0e88d9397bd099d824ab33e883c4de08141bb5ac7dbb745264283f357d10b091"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
