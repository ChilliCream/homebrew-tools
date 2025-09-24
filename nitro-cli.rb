class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8.5/nitro-osx-arm64.zip"
      sha256 "f49ccf9355e1fe8ae694270254bd85d1c42322b9037217513b571ddc71318595"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.8.5/nitro-osx-x64.zip"
      sha256 "2b1cbacf9d55931576c32ab8a530358fe3a2e620cc33c08d8092f116b3dc2908"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
