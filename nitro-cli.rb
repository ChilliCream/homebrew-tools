class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.20/nitro-osx-arm64.zip"
      sha256 "70acad78053d3400fc61abfc964280afa10bc998d1370f206cd707122746950e"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.20/nitro-osx-x64.zip"
      sha256 "3e8abfc5b75562259548f8728772c15ccfcf240e3a8867c55d38b4732749b991"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
