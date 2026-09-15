class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.7/nitro-osx-arm64.zip"
      sha256 "35be3241371851e27004fd14f8b11856ef5254b150f4414e861eb8870c7e84be"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.7/nitro-osx-x64.zip"
      sha256 "62d75d63b9990d1d930f70e3c5678b4af4955ea74bf5a10e3079e4c2ae973354"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.7/nitro-linux-arm64.tar.gz"
      sha256 "af67d6a640774b5e276549f1756d3922331f4a4654cea8512bfc722310fb6e60"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.7/nitro-linux-x64.tar.gz"
      sha256 "2e73e34e802a2f48eb99442910695f5b9c2d49cdfd5c91dd098070d26493f16a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
