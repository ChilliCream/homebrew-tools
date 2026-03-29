class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.21/nitro-osx-arm64.zip"
      sha256 "6f67b75f3f66edfa1b69d4aaccb64d7c81fbb4de4d95aeddb6c528f8d603e273"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.21/nitro-osx-x64.zip"
      sha256 "b6ded64a1feac82ff3e903e9ba278a87d42c26e30c0ee90f41fe02d36bffb1ab"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
