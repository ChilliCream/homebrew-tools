class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.10-p.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.2/nitro-osx-arm64.zip"
      sha256 "a456d8e008ba31c3e89be92eb1e2192c51509e1f194177ed4933a72444d32c30"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.2/nitro-osx-x64.zip"
      sha256 "1e0bd7f7f3b80787474caeccc07a20b900b9d309f5c0650af6e9930d9cbd22d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.2/nitro-linux-arm64.tar.gz"
      sha256 "af35e43ca7f424a109dfa6a60ccb3ab5ecd0de46f86265fee0caae58fba274b2"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.2/nitro-linux-x64.tar.gz"
      sha256 "0710d5c7a6cb1ed8e5ae697ddc29c1c89c162e590d9cc010f0aef37347f019d4"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
