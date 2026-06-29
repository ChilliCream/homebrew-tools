class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.4.0-p.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.9/nitro-osx-arm64.zip"
      sha256 "7a867407fd31751c5e9be7f0172f2475393c65c84e64f46a104aa22c41ccd6e2"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.9/nitro-osx-x64.zip"
      sha256 "1e8160a35257786905bb0d8774b7009df7aab4675942f1c752c8b505478e7d10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.9/nitro-linux-arm64.tar.gz"
      sha256 "0ef66f7703dc2b82f45ca3bf40151de01c247cf84f8f38755b2b145119ffe7fe"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.9/nitro-linux-x64.tar.gz"
      sha256 "016e4d48be599ea9ecefcf80638aaf18f1772812d068eb583ec216c1c0f8828e"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
