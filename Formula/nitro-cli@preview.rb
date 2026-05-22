class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.10-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.1/nitro-osx-arm64.zip"
      sha256 "77abbb4bccc7364a71db7b8ae8441f1994fd456c40a7f55bc6280862036b9159"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.1/nitro-osx-x64.zip"
      sha256 "3e7cb5d9e1145f09f1cc554b803ab9c83222dd1b4887f3b3605818190520670e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.1/nitro-linux-arm64.tar.gz"
      sha256 "ae43988ad80b8d903335eb118ca590813c3f20c2f1328b30162dc1c3bb5fb6b0"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.1/nitro-linux-x64.tar.gz"
      sha256 "1802ca7aa8f919b906362974bef54850a41373e8666835373447cb3c87869909"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
