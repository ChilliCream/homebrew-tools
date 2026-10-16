class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.28/nitro-osx-arm64.zip"
      sha256 "fd25e8b369732f7a15e867e76498f3f9cbdc0ecb7dced5dc90e2cd5e0226aa64"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.28/nitro-osx-x64.zip"
      sha256 "e19eeb4f192a42442943521e040b863194c9f3472e5d46f73465903b1f852119"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.28/nitro-linux-arm64.tar.gz"
      sha256 "d9ec467267f5f94443cf2ebf08277aaa4d930de97140e5971ee30679bd4e41bf"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.28/nitro-linux-x64.tar.gz"
      sha256 "94a0cdf1fccd428feafc387bb7b1e52e5dfe09d9fc1c8bf514036f1e4b9617fd"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
