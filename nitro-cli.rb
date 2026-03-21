class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.0/nitro-osx-arm64.zip"
      sha256 "1d2b8f33350a9aa8366a5417227701d36688dd2445dfa2dfbb54e595c54599f1"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.0/nitro-osx-x64.zip"
      sha256 "a0b46562825a8940dc04ed22162c12b49e1c43fc23d984fa32149cdcbec411a3"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
