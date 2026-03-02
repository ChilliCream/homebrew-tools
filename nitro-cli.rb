class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.22/nitro-osx-arm64.zip"
      sha256 "f00e2e9b88253932359c6131d15dea2fd6de0c840fa07f4cf1c3f9dd2bf05feb"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.22/nitro-osx-x64.zip"
      sha256 "8cfef414fbf526ac3565d6a44bf4e89faf79609840f8349e2e18922799fa7775"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
