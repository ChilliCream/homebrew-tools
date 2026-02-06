class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.45/nitro-osx-arm64.zip"
      sha256 "e28fa53e6c2312fd1e2105e53acf9beee23a9e6e5af353229a9efcc90b898576"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.45/nitro-osx-x64.zip"
      sha256 "457c338a381d36dca95b3a5748ee9741354e9b72a4702e0b40170152e813f0f9"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
