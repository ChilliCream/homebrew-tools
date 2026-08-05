class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.16/nitro-osx-arm64.zip"
      sha256 "d0f0ff959813a539cd3a69521b4e0bccd10dcccb432f0e5b6d606515f546f8c3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.16/nitro-osx-x64.zip"
      sha256 "38234873826ec0639fde7d3824f86cd757c9d2d4fed19cd98025bbce5bb73367"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.16/nitro-linux-arm64.tar.gz"
      sha256 "dfc5b6b44e90c73ba0d50c9e8b19dfd7683fcb114f9edce367fdc45c29dec02e"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.16/nitro-linux-x64.tar.gz"
      sha256 "9ade7580d56632bb233e72e1dba63e3332058709ade96f42b50fc9e3284d3a85"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
