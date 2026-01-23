class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.33/nitro-osx-arm64.zip"
      sha256 "5adab87fd5fdfa59a2d205fab19963be9aa493ce024524a8b826bcae0b62ac27"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.33/nitro-osx-x64.zip"
      sha256 "23a6a77d50f057544e2b14bb85a0f870f167905d3914edb839d1c3b7b496457b"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
