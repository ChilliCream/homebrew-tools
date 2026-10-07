class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.20/nitro-osx-arm64.zip"
      sha256 "50671d6475c7cf6a581afe1a98cd916ee3e992ab155d753ad2b0285aa9075e3f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.20/nitro-osx-x64.zip"
      sha256 "c691d6e91de7570b0be3bedb74ec25580815960b492072d7398254b03d1b4b99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.20/nitro-linux-arm64.tar.gz"
      sha256 "6c96ab40806e234508d07498ea25f32c0ac5807b828b23c95c7b4bcbeb5bff12"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.20/nitro-linux-x64.tar.gz"
      sha256 "eb68f10a84a4c06874d9d6f7853bdc48623e8f7a55411ad61cb0bb7c80cad4ae"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
