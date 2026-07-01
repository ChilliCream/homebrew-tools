class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.4.0-p.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.11/nitro-osx-arm64.zip"
      sha256 "c877c4aebfeaa2a13d6d70b7a98837f132262f3a1e0b30bf045cfdedf9193141"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.11/nitro-osx-x64.zip"
      sha256 "5575fcfe8e53bd0d7bf262285706c47b00a5147850b2f338c5108cc1b8f7e1bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.11/nitro-linux-arm64.tar.gz"
      sha256 "c82daf8467ba2c9d677c82b4c143f202ea4b254009b3018c971ed23ee4affaa5"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.4.0-p.11/nitro-linux-x64.tar.gz"
      sha256 "2976eddd9303fd9edf9fddeb18b3bc33b915f792d4095eba5bec0ffee0507f35"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
