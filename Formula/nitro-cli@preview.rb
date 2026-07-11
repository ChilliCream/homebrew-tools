class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.5.0-p.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.13/nitro-osx-arm64.zip"
      sha256 "232f3a5d80d8b7a2b111ec9fce65424474c14f6fec0d9a45371b5a8ed81c5b92"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.13/nitro-osx-x64.zip"
      sha256 "08ac79a5c72e4c74bfc0a1b15eadf58954f3a72896aeb55e7840717a026179be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.13/nitro-linux-arm64.tar.gz"
      sha256 "6d695dd1b3b92c70905586d138984d5ceb6f6676dae974c05df4c69a4755f9dc"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.13/nitro-linux-x64.tar.gz"
      sha256 "d330ea0046bc085ec4d7606a0509458b6e8a3e5d0985a96f9377151bef9b583d"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
