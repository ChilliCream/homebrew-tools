class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.1-p.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.5/nitro-osx-arm64.zip"
      sha256 "6f691ec77cf930f054540ccac87ad4d7283417696580a64197f1b5d51436a150"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.5/nitro-osx-x64.zip"
      sha256 "7f25cd21c6a2b34742fe34edc328c2073cc6f674781670b98b98ba758f8b4fda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.5/nitro-linux-arm64.tar.gz"
      sha256 "bbfed45d2ad4989ca92ea62228210d493373cafc1dad4355c72d32dd252dae76"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.5/nitro-linux-x64.tar.gz"
      sha256 "8d670c4dfedd7a2a3a6860ae7ccbc239a9dc75c2910dff3db0f053a6a1af57da"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
