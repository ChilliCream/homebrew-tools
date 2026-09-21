class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.9/nitro-osx-arm64.zip"
      sha256 "e909299c2429a6546c5c7843b88d7d5cedcfc446d63752fb4b1622e2eac377e1"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.9/nitro-osx-x64.zip"
      sha256 "f1f74eafa6d464f77ef7823758a6ec8919d41ca1b0d66fa8908220ad4193d731"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.9/nitro-linux-arm64.tar.gz"
      sha256 "1b29544d919a71c1634a023f17e1781c217fd851f928e26bd6bb31adfd88f1ae"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.9/nitro-linux-x64.tar.gz"
      sha256 "3591c0b62a42d952850a5626defff535a2218d5922fe4eceb6b005aebe6b9d7d"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
