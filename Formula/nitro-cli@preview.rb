class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.4-p.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.3/nitro-osx-arm64.zip"
      sha256 "fc82fdc8d21adca6cfda5970ab93d29210a8cf05787d02106d7f81dcade55e3b"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.3/nitro-osx-x64.zip"
      sha256 "d03e6816d42a59f0d28e3ada5243bbcb63b0c648b56db9df97b875f5de1fabed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.3/nitro-linux-arm64.tar.gz"
      sha256 "3037c890fe764f51b2f19cf608948cab7b43eb7e4160c977a3a0881471ba441f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.4-p.3/nitro-linux-x64.tar.gz"
      sha256 "673b012073d3b0cf778540f070bdcdac3c9f372c054759cae677b43da868206d"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
