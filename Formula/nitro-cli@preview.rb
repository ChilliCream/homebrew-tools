class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.2-p.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.5/nitro-osx-arm64.zip"
      sha256 "e9fcb693d8aa6cde11c5592a23ac2270319f516e344629b7e5997e4d77da8394"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.5/nitro-osx-x64.zip"
      sha256 "d31450726a997ac9ac889a8a432c74fce7a6e558d3e0887b1522d94e3544b6c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.5/nitro-linux-arm64.tar.gz"
      sha256 "27094ee745e1de89d1aa466b64ec0f6a80322555c75f73d2f394f40043695e53"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.5/nitro-linux-x64.tar.gz"
      sha256 "4e41bb871dae81fdd5573d9236b0358890ec49a8cfe5d8c7bd59493dbcb482f9"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
