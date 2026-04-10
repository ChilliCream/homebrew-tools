class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.29/nitro-osx-arm64.zip"
      sha256 "8c1536510f55ef5cd50f029b20e1e386cdf10008ab719bb39063d8a897ee427c"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.29/nitro-osx-x64.zip"
      sha256 "7bba265fafb5e0111c7f43cf55082dc1cae709892eb816c6d436940a7978ac9e"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
