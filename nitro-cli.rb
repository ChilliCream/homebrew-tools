class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.23/nitro-osx-arm64.zip"
      sha256 "4aa6fd1a06d35c778ea8a8f266cdd6bc423e4ad7a2662ac11283347aa1b97bcc"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.23/nitro-osx-x64.zip"
      sha256 "9c2731e81c05f900aacfe9d62baf19b390f66d9ddfbfb387e8b8b63093ee9a7b"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
