class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.2/nitro-osx-arm64.zip"
      sha256 "e4adb0d6845fee2c9f3e6460c69b1a9bfbf06e91769f8d5f9d331352e6e610a7"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.10.2/nitro-osx-x64.zip"
      sha256 "98b271ad3c40fe2131a86d7468e109fa06042e82f4572b6a3afd5e71ae7e5fc1"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
