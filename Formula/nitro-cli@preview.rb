class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.0-p.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.14/nitro-osx-arm64.zip"
      sha256 "e072f93a90b5cd131580ae9693c2e3252b6f9b4c59ee930a6858ba660f5baaa6"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.14/nitro-osx-x64.zip"
      sha256 "a5d4c3459a32ffce151940331c4ead632345892e4a5bdd7fe9b21d1321db258d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.14/nitro-linux-arm64.tar.gz"
      sha256 "d1dad5ce9e75a6140d3791dbe669d930df4998654fb47eaeb31c643e2308502a"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.14/nitro-linux-x64.tar.gz"
      sha256 "1ac198acf0548139fd9639fb6910f7b462625499ccadbf1380bfa9995fb67fc9"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
