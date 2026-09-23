class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.10/nitro-osx-arm64.zip"
      sha256 "6b359dc7a600374f5880118fc49d1d0872d98fc2facc12051e87cedc7ebe84b9"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.10/nitro-osx-x64.zip"
      sha256 "8ff0e6443770947c7685982f0df025fa89639d9c7b3ccf6f4229c1cf52fae01c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.10/nitro-linux-arm64.tar.gz"
      sha256 "839a14a33b8f687f4b3b432f469f446e658784abb9a96072bc034a25e5f7fd78"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.10/nitro-linux-x64.tar.gz"
      sha256 "4d257a769c069790ab0b847919d4ef9538ab67704855132cb717429318cce997"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
