class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.1-p.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.4/nitro-osx-arm64.zip"
      sha256 "0ed95d7e307f41b5d89fa35d32a017afb4b7c2465261898c97fdb92514c19d28"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.4/nitro-osx-x64.zip"
      sha256 "fbd3e1f2f553e3912e6031698c4c64cc697260614ce5bfb3ba0cd7931d99fa0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.4/nitro-linux-arm64.tar.gz"
      sha256 "f3a95a566a074d4e0e3b805555515e924dd908e4e42f547fbc954ca8fe05519f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.4/nitro-linux-x64.tar.gz"
      sha256 "091e46e10cc0ca0523cfdace3e9b350dccf1f521c9d0bc9b69a9f8c9d1592f29"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
