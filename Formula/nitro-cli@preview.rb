class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.5.0-p.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.9/nitro-osx-arm64.zip"
      sha256 "141edf90e388b775e4bb695f419234e4687c28b2fbd7ace1fbb646b86cd7330f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.9/nitro-osx-x64.zip"
      sha256 "169ce7c5752bb654687b0840aaf45c09ce98a9b312f64b9849cb6f5cd4c152cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.9/nitro-linux-arm64.tar.gz"
      sha256 "f144f5e6fa7adb28961521211621ea633cbbf7aaf7fe261dd47bd6125d091b3e"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.5.0-p.9/nitro-linux-x64.tar.gz"
      sha256 "8a69b7c6f8eeae52fdef04c31bda98e04676f600279068db6f689708f1dc88ae"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
