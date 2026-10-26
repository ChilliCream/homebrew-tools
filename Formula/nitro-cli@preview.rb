class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.2/nitro-osx-arm64.zip"
      sha256 "e9858560db452c3a2871aedbb96ac1d9645668d88b7d4ee7be076b8261380117"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.2/nitro-osx-x64.zip"
      sha256 "c80a4bb2974f4a40f47b184a105b5f39de9cad6d232ff633b5df8351bb22a4d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.2/nitro-linux-arm64.tar.gz"
      sha256 "05ca91e73aee980abd999c5af68185f0fb1ab51b53cc33e8059919c59c3a0e66"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.2/nitro-linux-x64.tar.gz"
      sha256 "1f0bf2a0904d5f7e08aabc19cb8a0ffc02f1ecea9e8e08f9b1ed762451d76ec9"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
