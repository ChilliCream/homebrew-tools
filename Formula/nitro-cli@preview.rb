class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.8/nitro-osx-arm64.zip"
      sha256 "8de9f8a8b509c5a4c094fe133ae11c4c1ae49c9e6cad6d604dfae9dace8430bb"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.8/nitro-osx-x64.zip"
      sha256 "9d7f1a8ef16bea0cdbd15e7f3ab22f7504eee452983164ef8cec5a81aabb5f1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.8/nitro-linux-arm64.tar.gz"
      sha256 "4bbbc1c2acfd0123aeeb28463e36c7e92c8c8acf251aa5cef6b261b665a88004"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.8/nitro-linux-x64.tar.gz"
      sha256 "d7da9b5be3e99225aa65382110df8b723a3ba26f59905b4d73f089f59c613a90"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
