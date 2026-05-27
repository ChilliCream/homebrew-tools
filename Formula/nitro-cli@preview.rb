class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.10-p.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.7/nitro-osx-arm64.zip"
      sha256 "dcac911198bfefec65054e3c5c20f9db32d185eae2ec2e041ef9466cccacf2c6"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.7/nitro-osx-x64.zip"
      sha256 "7ff4393bac91071733d543050e0e2c96375140a7bc0fcb6429168eee40ac4eb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.7/nitro-linux-arm64.tar.gz"
      sha256 "29c359cfb2ce208d28374221426e28b9728318612b13c799092e1b1df65cdbe9"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.10-p.7/nitro-linux-x64.tar.gz"
      sha256 "e145ee726172a27f63664e477f6d2fdfa05b4d5ae0ec205693c4199d9204eddd"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
