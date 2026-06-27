class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.4.0-p.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.6/nitro-osx-arm64.zip"
      sha256 "dd8293fa1a0ba7219c4e77ad046ddcc6b324cecb6fb15bf4f15dc170244f6d07"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.6/nitro-osx-x64.zip"
      sha256 "5ff6b256ffa4efdec8527a3d3b2eee653dba9aae4d4c4166fa311438046e8fb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.6/nitro-linux-arm64.tar.gz"
      sha256 "1f73c3971cb81a473a728d38dd4434ef1ba3287f01ba3e10323ad27fa7992104"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.6/nitro-linux-x64.tar.gz"
      sha256 "007d1d5f4ad4e4f0f7c077f7d48f26055334b85e0dbbbab4691ddfb13a339978"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
