class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.0-p.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.12/nitro-osx-arm64.zip"
      sha256 "ccd1569c28496f07b485c83627e3f6d87d49f131430e13d2a69e1e9f93f836be"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.12/nitro-osx-x64.zip"
      sha256 "89f168a21081d9112c6e55b03f847a7dcd08cd406f71f30509c487b53e62a724"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.12/nitro-linux-arm64.tar.gz"
      sha256 "4701767503e7b59ac9c503c2ee6bf13a17dbfb9a1bfc4eeeefa56d0bc9d0404f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.12/nitro-linux-x64.tar.gz"
      sha256 "8197e359093c9f3f8d68f0c5c8cf17a7bfd245b40a71bc0b8956ea2cb7af30a7"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
