class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.4.0-p.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.8/nitro-osx-arm64.zip"
      sha256 "407f245789a72f53bf7479a464bb19c61a3facdb9b756d53a4d8ea3e1642e27f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.8/nitro-osx-x64.zip"
      sha256 "693923ad80e57bc22b49538e9ff0ad4df4b1c3a8ec95e5db6c2b800c01f6e7ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.8/nitro-linux-arm64.tar.gz"
      sha256 "f4f6ace3b0573780488aff655c88fa402c07ebda867e2a55f41604da38b4a0c6"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.8/nitro-linux-x64.tar.gz"
      sha256 "7f5191473f58d49697a8e28bcbd79faa233de47793126d445c8bc416175c403c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
