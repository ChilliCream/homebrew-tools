class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.27/nitro-osx-arm64.zip"
      sha256 "2ee05cadc44ba64253f2969a513ab693df83364b24fe47b0909bf52760e82944"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.27/nitro-osx-x64.zip"
      sha256 "2277ee20c77159863ebf60f2b5eebcb9db8aa19c763b87653eb3500baf0ec44e"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
