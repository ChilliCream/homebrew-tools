class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.48/nitro-osx-arm64.zip"
      sha256 "7d22129ba0d728f86419b8d5aa54c7312c7445523e35af203e3381a638053ea5"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.48/nitro-osx-x64.zip"
      sha256 "42e2f0b531041d24da680588d8e9e0f7893ebd6effed53c6e0f4f0afbf97bfe5"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
