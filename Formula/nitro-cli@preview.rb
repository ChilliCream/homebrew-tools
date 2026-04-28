class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.0-rc.1.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.43/nitro-osx-arm64.zip"
      sha256 "7fb0993e3ca0730658a59f88bfff2e1703197a6178c70612e83823eece082573"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.43/nitro-osx-x64.zip"
      sha256 "f6ff1728a052bfb80603fdb4959d0578befa24d63452e7cad35040e6f4c11636"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.43/nitro-linux-arm64.tar.gz"
      sha256 "174672a484a1da27602bf13386187f47cd731acb0559fb23b600869e4276304f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.43/nitro-linux-x64.tar.gz"
      sha256 "5244ab776d513b3e8361d436e228604fd35925a0f7c04ebdbabb5dfbf78fdc75"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
