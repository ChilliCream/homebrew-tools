class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.16/nitro-osx-arm64.zip"
      sha256 "90053da7ebb93bdf78933b04ab5a380ea3e8e2344e21f8d3bc056a7497d95f55"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.16/nitro-osx-x64.zip"
      sha256 "81b3cb39dae84ea065fb4702865b909de837666c860a4ac7168e153fcf4af798"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
