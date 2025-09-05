class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.65/nitro-osx-arm64.zip"
      sha256 "413e8f06808b2426e54e38c22b41d3377205cb4c68fbacd007e121df20e62819"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.7.65/nitro-osx-x64.zip"
      sha256 "5cc86059aa3d6014c0a57efafe5687fdfa411ee30712f30c90b7ffc3380ff026"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
