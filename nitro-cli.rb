class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.38/nitro-osx-arm64.zip"
      sha256 "f3d90d73ed9f126662affd51dc0e73e15f7814b379dc51f76d374ea52986a553"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.38/nitro-osx-x64.zip"
      sha256 "3e4c33cdd4da1b1dc55d88e87ae60a9dea205387d564e6f6c5c5d8d8e2d4037b"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
