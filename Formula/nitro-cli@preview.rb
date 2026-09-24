class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.12/nitro-osx-arm64.zip"
      sha256 "3c0acaabb0861ac92004e501608a94441896a22945603daeae414ded38acaa5b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.12/nitro-osx-x64.zip"
      sha256 "ce8086a0bb4f570b38235bc40569eeac1a27205c24ac1de677e866642076568f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.12/nitro-linux-arm64.tar.gz"
      sha256 "a32dcbfa363ec39d9f47662f624ec77dbf6f1afff810562cca51c31a3ce9f90f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.12/nitro-linux-x64.tar.gz"
      sha256 "ee8c4fc1fa47fa706028d4daa815d89ff5add597b357a79b4a8d2b89a7ea36b1"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
