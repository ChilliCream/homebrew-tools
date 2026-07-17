class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.5.1-p.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.1-p.2/nitro-osx-arm64.zip"
      sha256 "8a4f6c1c3afda96ceaed0b6179c30631fdf831157581d01475ea2f874a01569e"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.1-p.2/nitro-osx-x64.zip"
      sha256 "c9daf79a8606a9dc72b2e5cf23c779d310697cfc32ad3cc31a648c3228970071"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.1-p.2/nitro-linux-arm64.tar.gz"
      sha256 "cc32c962f3903cab87ad7cacd7594adf1b469d963f66c3963b17e3c0035a64cb"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.1-p.2/nitro-linux-x64.tar.gz"
      sha256 "a326598a9cd030cc57d6571db1a6167bd0482911d29e7f3af4f7fe8e3228e970"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
