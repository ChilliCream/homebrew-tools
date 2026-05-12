class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.1-p.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.6/nitro-osx-arm64.zip"
      sha256 "a9ba5d6636471dc00f57b73e1b2760140223886c7df61c75349323b464af19d8"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.6/nitro-osx-x64.zip"
      sha256 "4c058ec2973d54fd6b2e686b7aa29ae453ecb8d9a41b7f84e5f8b6fd0a45d560"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.6/nitro-linux-arm64.tar.gz"
      sha256 "0b12e360a9198425854aeab53bb1dc6b3d80dc9a0ecbd414512411721c4c6d80"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.1-p.6/nitro-linux-x64.tar.gz"
      sha256 "aedf895099d19e6e8c0f075f620b224ac2073f10845e346bc9f1524b8d4d42b1"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
