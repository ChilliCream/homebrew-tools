class NitroCliAT1677 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.7/nitro-osx-arm64.zip"
      sha256 "668e9957a4ca5c6d7e1dbf7f48a14b8e9b0fc6aac97a11f7ce305487aa225ac9"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.7/nitro-osx-x64.zip"
      sha256 "c59e2922fa935e8a37a33ed12156444246b131e39601250306886155654f393f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.7/nitro-linux-arm64.tar.gz"
      sha256 "5fb4c3ea3e081a88dcb4bba593e0c06cb25a6b5d3545a40c73f6dca18bf4c652"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.7/nitro-linux-x64.tar.gz"
      sha256 "f79b6b0f5d14cbe497a26a2704e3c21a3688a78ced979cb006b5506f7615d7d6"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
