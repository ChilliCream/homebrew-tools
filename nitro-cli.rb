class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.18/nitro-osx-arm64.zip"
      sha256 "c349762dd4965f6f3a7e29b255d05eeea1f2cd4b8f61064edf980c09fcde0b96"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.18/nitro-osx-x64.zip"
      sha256 "d54ca3bd833a3e14a44160d320d72ab0f9db8be16176b767a562d3ed77c8683a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
