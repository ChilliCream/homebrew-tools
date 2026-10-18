class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.29/nitro-osx-arm64.zip"
      sha256 "2d29ab71801670e12a9200ff442b1429e449f841247d949a056b7f022d2e5eb8"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.29/nitro-osx-x64.zip"
      sha256 "30cf38b5d3c999bf1e8ef0d377b42c8cdf7d812f3c55a5e025e5193c253a85b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.29/nitro-linux-arm64.tar.gz"
      sha256 "d66965abfec30c3b2f9a4562236a6ff7eb195d3bb5f8014a0527e710ed35598e"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.29/nitro-linux-x64.tar.gz"
      sha256 "fdcced79146f343504e693e70ed1c6d6fd1e29ed87f24e533385dd58c3599229"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
