class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.2-p.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.1/nitro-osx-arm64.zip"
      sha256 "bc7fbe3da533658a7c6cbe735559ae231d9ca1c5dd57869790ac84811eef3c49"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.1/nitro-osx-x64.zip"
      sha256 "8265374906d7ebab7364bd82cc268467bbe2308a89230d2a93eaacea6d6e846d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.1/nitro-linux-arm64.tar.gz"
      sha256 "eb9ec2215f7a1bc275c1c0a7fd053d2118415aa0be0fff35ee3b81829a2dc689"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.2-p.1/nitro-linux-x64.tar.gz"
      sha256 "c00d5cad86d5dc88e6e772369cce503c69c451c4b283066e2ec0996bd0656366"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
