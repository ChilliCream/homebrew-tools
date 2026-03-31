class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.22/nitro-osx-arm64.zip"
      sha256 "b373a6735c9f7d58e8572c0885dde1ead7a76b19316591478779a0cf0a53733a"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.22/nitro-osx-x64.zip"
      sha256 "56e883705b59e1e476f335e749f20ffe209c7a023e48690b8137323e98e53555"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
