class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.5.0-p.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.10/nitro-osx-arm64.zip"
      sha256 "9a302e7347bc9669c68adcfed072de479de4060f0649879997d83f6472ffe5b0"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.10/nitro-osx-x64.zip"
      sha256 "5f7e977f3c4432e1edfb2b5f129bee89b9cfbab0afb89ce854643ccd7b1704eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.10/nitro-linux-arm64.tar.gz"
      sha256 "23203184f249575d12c3e7006cb7b7462f96990951fdf9260622ff6da6591dfa"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.10/nitro-linux-x64.tar.gz"
      sha256 "789bd91ea686baa04dd751abe6281b9fc4913f2b83647b8b6adce190d1426aae"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
