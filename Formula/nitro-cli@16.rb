class NitroCliAT16 < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_releases
    regex(/^(16\.\d+\.\d+)$/)
  end

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0/nitro-osx-arm64.zip"
      sha256 "65ade5f50100c22389056586a80eea57de8e394f6eb019e87da44fa6f87ac670"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0/nitro-osx-x64.zip"
      sha256 "262e8ecdbf5ce71f21910a7f5ef2ee40dd2a24a3a5c714ebcc40f5d53338400f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0/nitro-linux-arm64.tar.gz"
      sha256 "36c94bb9e0731657cb0f93888ca5a8398743d208ca3fe714cce3278fd120bef7"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0/nitro-linux-x64.tar.gz"
      sha256 "a9f33bede6c1e5e0ec006adbb2aa1f0ee5ea2aa19cc764c59ee81dc3aadf7d4a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
